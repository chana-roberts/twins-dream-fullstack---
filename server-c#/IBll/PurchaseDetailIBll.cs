using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IBll
{
    public interface PurchaseDetailIBll<T>
    {
        public  Task<int> AddAsync(T t);
        public Task<List<T>> SelectAllAsync();
    }
}
