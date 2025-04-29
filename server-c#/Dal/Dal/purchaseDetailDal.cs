using Dal.Converters;
using Dal.Modules;
using IDal;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;



namespace Dal.Dal
{
    public class PurchaseDetailDal : PurchaseDetailsIDal<Dto.PurchaseDetailsDto>
    {

        public async Task<List<Dto.PurchaseDetailsDto>> SelectAllAsyncD()
        {

            TwinsDreamContext db = new TwinsDreamContext();
            var p = await db.PurchaseDetails.Include(c => c.Product.Description).Include(c => c.Product.Name).Include(c => c.Product.Price).Include(c => c.Product.Image).ToListAsync();
            return PurchaseDetailsConverter.ToPurchaseDetailListDto(p);

        }

        public async Task<int> AddAsync(Dto.PurchaseDetailsDto c)
        {
            TwinsDreamContext db = new TwinsDreamContext();
            db.PurchaseDetails.Add(Converters.PurchaseDetailsConverter.ToPurchaseDetailsDal(c));
            int x = await db.SaveChangesAsync();
            return x;
        }

    }
}
