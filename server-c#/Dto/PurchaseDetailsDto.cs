using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dto
{
    public class PurchaseDetailsDto
    {
        public int Id { get; set; }


        public int ProductId { get; set; }

        public int Amount { get; set; } = 1;

        public int? ShoppingId { get; set; }
        public int Price { get; set; }
        public string Description { get; set; }
        public string Image { get; set; }
        public string Name { get; set; }

    }
}
