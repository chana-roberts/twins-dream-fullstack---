using Dal.Converters;
using Dal.Modules;
using Dto;
using IDal;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;



namespace Dal.Dal
{
    // 0527601817
    public class ProductDal : ProductIDal<Dto.ProductDto>
    {

        public async Task<List<Dto.ProductDto>> SelectAllAsyncD()
        {

            TwinsDreamContext db = new TwinsDreamContext();
            var p = await db.Products.Include(c => c.Category).Include(m => m.Company).Include(m => m.Gender).ToListAsync();
            return ProductConverter.ToProductListDto(p);

        }
        public async Task<List<Dto.ProductDto>> SlowSelectAsyncD()
        {

            TwinsDreamContext db = new TwinsDreamContext();
            var p = await db.Products.Include(c => c.Category).Include(m => m.Company).Include(m => m.Gender).ToListAsync();
            List<ProductDto> products = ProductConverter.ToProductListDto(p); 
            var sort=products.OrderByDescending(x => x.Price).ToList(); 
            var y=sort.Take(10).ToList();
            return ProductConverter.ToProductListDto(p);

        }
        public async Task<List<Dto.ProductDto>> FilteringAsync(int? gender, int? category)
        {

            TwinsDreamContext db = new TwinsDreamContext();
            var p = await db.Products.Include(c => c.Category).Include(m => m.Company).Include(m => m.Gender).ToListAsync();
            if (gender != null)
            { p = p.Where(p => p.GenderId == gender).ToList(); }
            if (category != null)
            { p = p.Where(p => p.CategoryId == category).ToList(); }

            return ProductConverter.ToProductListDto(p);

        }

        public async Task<int> CheckAsync(int Id)
        {

            TwinsDreamContext db = new TwinsDreamContext();
            var p = await db.Products.Where(x => x.Id == Id).ToListAsync();
            if (p != null)
                return p.First().Id;
            return -1;
        }


    }
}
