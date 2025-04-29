using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IDal
{
    public interface PurchaseDetailsIDal<T>
    {
        public Task<List<T>> SelectAllAsyncD();
        public Task<int> AddAsync(T t);
    }
}
