using IBll;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Bll;
using Dal.Modules;
using Dal.Converters;
namespace Bll
{
    public class ShoppingBasketBll : ShoppingBasketIBll<Dto.PurchaseDetailsDto>
    {
        IDal.PurchaseDetailsIDal<Dto.PurchaseDetailsDto> d { get; set; }
        IDal.ProductIDal<Dto.ProductDto> pr { get; set; }
        IDal.ShoppingBasketIDal<Dto.ShoppingBasketDto> p { get; set; }
        public ShoppingBasketBll(IDal.ShoppingBasketIDal<Dto.ShoppingBasketDto> p, IDal.PurchaseDetailsIDal<Dto.PurchaseDetailsDto> d, IDal.ProductIDal<Dto.ProductDto> pr)
        {
            this.p = p;
            this.d = d;
            this.pr = pr;
        }

        public async Task<int> UpdateBasket(List<Dto.PurchaseDetailsDto> list, int CostumerId, int month)
        {


            if (list == null || !list.Any())
                throw new ArgumentException("The purchase details list cannot be null or empty.");

            if (this.d == null || pr == null || p == null)
                throw new InvalidOperationException("Data access layers must be initialized.");
            // 1.בודקת יומולדת - אם הוא בחודש של היומולדת
            Boolean b = false;
            int d = new DateTime().Month;

            if (month == d)
            { b = true; }


            //2.מחשבת סכום כולל הנחות ואם יש – הנחת יומולדת
            int sum = 0;
            sum = list.Sum(item => item.Price * item.Amount);
            if (b == true)
            {
                sum = (sum / 100) * 95;
            }
            //בקניה מעל 1000 5% הנחה נוספים
            if (sum >= 1000)
            {
                sum = (sum / 100) * 95;
            }

            //3.מוסיפה קניה בשרת שמחזירה קוד קניה

            Dto.ShoppingBasketDto s = new Dto.ShoppingBasketDto
            {
                Price = sum,
                Costumer = CostumerId
            };

            int shoppingId = await p.AddAsync(s);



            //4.מעדכנת את כל מערך הקניה בקוד הקניה

            foreach (var item in list)
            {
                if (await pr.CheckAsync(item.ProductId) == -1)
                {
                   throw new InvalidOperationException($"Product with ID {item.ProductId} does not exist.");
                }
                item.ShoppingId = shoppingId;
                //5.שומרת את פרטי הקניה
                await this.d.AddAsync(item);
            }

            //Console.WriteLine(list);
            //foreach (var item in list)
            //{
            //    item.ShoppingId = shoppingId;
            //    Console.WriteLine(item);
            //   
            //    int m;
            // int y=   item.ProductId;
            //    if (item.ProductId != null && await pr.CheckAsync(item.ProductId) != -1)
            //    m= await this.d.AddAsync(item);
            //   // Console.WriteLine(m);
            //}


            //6.מחזירה סכום  ?
            return sum;

        }
    }


}
