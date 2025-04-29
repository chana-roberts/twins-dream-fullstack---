using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IDal
{
    public interface ProductIDal<T>
    {

        public Task<List<T>> SelectAllAsyncD();

        public Task<List<T>> FilteringAsync(int? gender, int? category);
        public Task<int> CheckAsync(int Id);
        public Task<List<Dto.ProductDto>> SlowSelectAsyncD();

    }
}
