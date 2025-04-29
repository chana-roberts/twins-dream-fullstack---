using Dal.converters;
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
    public class CostumerDal : CostumerIDal<Dto.CostumerDto>
    {

        public async Task<Dto.CostumerDto> LogInByMailAndName(string m, string n)
        {

            TwinsDreamContext db = new TwinsDreamContext();
            var p = await db.Costumers.Where(x => x.Mail == m && x.Name == n).ToListAsync();
            if (!p.Any())
            {
                throw new KeyNotFoundException($"No customer found with Name: {m} and Mail: {n}");
            }
           return CostumerConverter.ToCostumerDto(p.First());
        }

        public async Task<Dto.CostumerDto> GetById(int id)
        {

            TwinsDreamContext db = new TwinsDreamContext();
            var p = await db.Costumers.Where(x => x.Id == id ).ToListAsync();
            if (!p.Any())
            {
                throw new KeyNotFoundException($"No customer found with Id: {id}");
            }
            return CostumerConverter.ToCostumerDto(p.First());
        }

        public async Task<int> AddAsync(Dto.CostumerDto c)
        {
            TwinsDreamContext db = new TwinsDreamContext();
            var p = await db.Costumers.Where(x => x.Mail == c.Mail && x.Name == c.Name).ToListAsync();
            if (!p.Any())
            {
                Modules.Costumer d = CostumerConverter.ToCostumerModel(c);
                db.Costumers.Add(d);
                await db.SaveChangesAsync();
                  return d.Id;
                //return 200;
            }
            return -1;
        }
        public async Task<List<Dto.CostumerDto>> SelectAllAsync()
        {

            TwinsDreamContext db = new TwinsDreamContext();
            var p = await db.Costumers.ToListAsync();
            List<Dto.CostumerDto> l=new List<Dto.CostumerDto>();

            foreach (var item in p)
            {
               l.Add(CostumerConverter.ToCostumerDto(item));
            }
            return l; 

        }
    }

    
}
