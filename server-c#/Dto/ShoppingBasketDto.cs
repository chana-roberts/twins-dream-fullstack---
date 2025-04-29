using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dto
{
    public class ShoppingBasketDto
    {
        public int Id { get; set; }

        public int Costumer { get; set; }

        public double Price { get; set; }

        public DateOnly Date { get; set; }

        //הערה
        public string? Remark { get; set; }
    }
}
