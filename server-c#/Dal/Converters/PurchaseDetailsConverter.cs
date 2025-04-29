using Dal.Modules;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dal.Converters
{
    public class PurchaseDetailsConverter
    {
        public static Dto.PurchaseDetailsDto ToPurchaseDetailsDto(Modules.PurchaseDetail p)
        {
            Dto.PurchaseDetailsDto newP = new Dto.PurchaseDetailsDto();

            newP.Id = p.Id;
            if (p.Product != null)
            {
                newP.Price = p.Product.Price;
                newP.ProductId = p.Product.Id;
                newP.Description = p.Product.Description;
                newP.Name = p.Product.Name;


            }
            newP.Amount = p.Amount;
            newP.ShoppingId = p.ShoppingId;

            return newP;
        }

        public static List<Dto.PurchaseDetailsDto> ToPurchaseDetailListDto(List<Modules.PurchaseDetail> p)
        {
            List<Dto.PurchaseDetailsDto> newListP = new List<Dto.PurchaseDetailsDto>();
            foreach (Modules.PurchaseDetail pd in p)
            { newListP.Add(ToPurchaseDetailsDto(pd)); }
            return newListP;
        }


        public static Modules.PurchaseDetail ToPurchaseDetailsDal(Dto.PurchaseDetailsDto p)
        {
            Modules.PurchaseDetail newP = new Modules.PurchaseDetail();

            newP.ProductId = p.ProductId;

            newP.Amount = p.Amount;
            newP.ShoppingId = p.ShoppingId;
            return newP;
        }

        public static List<Modules.PurchaseDetail> ToPurchaseDetailListDal(List<Dto.PurchaseDetailsDto> p)
        {
            List<Modules.PurchaseDetail> newListP = new List<Modules.PurchaseDetail>();
            foreach (Dto.PurchaseDetailsDto pd in p)
            { newListP.Add(ToPurchaseDetailsDal(pd)); }
            return newListP;
        }
    }
}
