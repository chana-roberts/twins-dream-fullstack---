using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IBll
{
    public interface ProductIBll<T>
    {
        public Task<List<T>> SelectAllAsync();
        public Task<List<Dto.ProductDto>> FilteringAsync(int? gender, int? category);
        public Task<List<Dto.ProductDto>> SlowSelectAsyncD();
        //     public Task<int> AddAsync(T t);
    }
}
