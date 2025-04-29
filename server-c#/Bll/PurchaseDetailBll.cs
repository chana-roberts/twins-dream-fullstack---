using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bll
{
    public class PurchaseDetailBll : IBll.PurchaseDetailIBll<Dto.PurchaseDetailsDto>
    {
        IDal.PurchaseDetailsIDal<Dto.PurchaseDetailsDto> p { get; set; }
        public PurchaseDetailBll(IDal.PurchaseDetailsIDal<Dto.PurchaseDetailsDto> p)
        {
            this.p = p;
        }


        public async Task<int> AddAsync(Dto.PurchaseDetailsDto d)
        {
            
            return await p.AddAsync(d);
        }
        public async Task<List<Dto.PurchaseDetailsDto>> SelectAllAsync()
        {
            Console.WriteLine("getPD--------------------");
            return await p.SelectAllAsyncD();
        }
        //להוסיף:::::::::::::::::::::::::::::::
    }
}
