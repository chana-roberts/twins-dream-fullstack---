using Dal.Dal;
using IBll;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bll
{
    public class ProductBll : IBll.ProductIBll<Dto.ProductDto>
    {
        IDal.ProductIDal<Dto.ProductDto> p { get; set; }
        public ProductBll(IDal.ProductIDal<Dto.ProductDto> p)
        {
            this.p = p;
        }


        public async Task<List<Dto.ProductDto>> FilteringAsync(int? gender, int? category)
        {
            Console.WriteLine("FilteringAsync--------------------");
            return await p.FilteringAsync(gender,category);
        }
        public async Task<List<Dto.ProductDto>> SelectAllAsync()
        {
            Console.WriteLine("get--------------------");
            return await p.SelectAllAsyncD();
        }

        public async Task<List<Dto.ProductDto>> SlowSelectAsyncD()
        {
          return await p.SlowSelectAsyncD();
        }
    }
}
