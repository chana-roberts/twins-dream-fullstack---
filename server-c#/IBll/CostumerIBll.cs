using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IBll
{
    public interface CostumerIBll<T>
    {
        public  Task<T> LogInByMailAndName(string m, string n);
        public  Task<T> GetById(int id);
        public Task<int> AddAsync(T t);
        public Task<List<T>> SelectAllAsync();
    }
}
