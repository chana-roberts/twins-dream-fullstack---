using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dal.Converters
{
    public class ShoppingBasketConverter
    {
        public static Modules.ShoppingBasket ToShoppingBasketModel(Dto.ShoppingBasketDto s)
        {
            Modules.ShoppingBasket p = new Modules.ShoppingBasket();
            p.Date = DateOnly.FromDateTime(DateTime.Now);
            p.Price = s.Price;
            p.CostumerId = s.Costumer;
         

            return p;

        }
    }
}
