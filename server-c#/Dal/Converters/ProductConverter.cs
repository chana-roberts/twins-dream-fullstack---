using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dal.Converters
{
    public class ProductConverter
    {
        public static Dto.ProductDto ToProductDto(Modules.Product product)
        {
            Dto.ProductDto newP = new Dto.ProductDto();
            //   newP.
            newP.Id = product.Id;
            newP.Name = product.Name;
            newP.Description = product.Description;
            newP.Price = product.Price;
            newP.Image = product.Image;
            newP.Inventory = product.Inventory;
            if (product.Company != null)
                newP.Company = product.Company.Name;
            if (product.Category != null)
                newP.Category = product.Category.Name;
            if (product.Gender != null)
                newP.Gender = product.Gender.Name;
            newP.Inventory = product.Inventory;
            if (product.Company != null)
                newP.CompanyId = product.Company.Id;
            if (product.Category != null)
                newP.CategoryId = product.Category.Id;
            if (product.Gender != null)
                newP.GenderId = product.Gender.Id;

            return newP;

        }
        public static List<Dto.ProductDto> ToProductListDto(List<Modules.Product> productList)
        {
            List<Dto.ProductDto> newListP = new List<Dto.ProductDto>();
            foreach (Modules.Product p in productList)
            { newListP.Add(ToProductDto(p)); }
            return newListP;
        }

    }
}
