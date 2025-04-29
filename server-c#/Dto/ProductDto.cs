using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dto
{
    public class ProductDto
    {
        public int Id { get; set; }

        public string? Name { get; set; }

        public string? Description { get; set; }

        public int Price { get; set; } = 0;

        public int CategoryId { get; set; }
        public String Category { get; set; }

        public int CompanyId { get; set; }
        public String Company { get; set; }

        //##מין
        public int GenderId { get; set; }
        public String Gender { get; set; }
        //#מלאי

        public int Inventory { get; set; }

        public string? Image { get; set; }
    }
}
