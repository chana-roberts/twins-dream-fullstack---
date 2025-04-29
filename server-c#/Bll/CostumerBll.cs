using Dal.Dal;
using IBll;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bll
{
    public class CostumerBll : IBll.CostumerIBll<Dto.CostumerDto>
    {
        IDal.CostumerIDal<Dto.CostumerDto> p { get; set; }
        public CostumerBll(IDal.CostumerIDal<Dto.CostumerDto> p)
        {
            this.p = p;
        }



        public async Task<Dto.CostumerDto> LogInByMailAndName(string m, string n)
        {
            Console.WriteLine("get--------------------");
            return await p.LogInByMailAndName(m, n);
        }
        public async Task<Dto.CostumerDto> GetById(int id)
        {
            Console.WriteLine("get--------------------");
            return await p.GetById(id);
        }
        //להוסיף:::::::::::::::::::::::::::::::
        public async Task<int> AddAsync(Dto.CostumerDto costumer)

        {
            Console.WriteLine("post--------------------");
            Console.WriteLine(costumer.ToString()); 
            return await p.AddAsync(costumer);
        }
        public async Task<List<Dto.CostumerDto>> SelectAllAsync()
        {
            Console.WriteLine("getAll--------------------");
            return await p.SelectAllAsync();
        }
    }
}
