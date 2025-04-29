using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dto
{
    public class CostumerDto
    {
        public int Id {get; set; }
        public string? Name { get; set; }

        public string? PhoneNumber { get; set; }

        public string? Mail { get; set; }
        public DateOnly Birthday { get; set; }
    }
}
