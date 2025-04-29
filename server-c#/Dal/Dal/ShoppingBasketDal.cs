using Dal.converters;
using Dal.Converters;
using Dal.Modules;
using IDal;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dal.Dal
{
    public class ShoppingBasketDal : ShoppingBasketIDal<Dto.ShoppingBasketDto>
    {


        public async Task<int> AddAsync(Dto.ShoppingBasketDto c)
        {
            TwinsDreamContext db = new TwinsDreamContext();

            Modules.ShoppingBasket d = ShoppingBasketConverter.ToShoppingBasketModel(c);

            db.ShoppingBaskets.Add(d);
            await db.SaveChangesAsync();
            return d.Id;

        }
    }
}
