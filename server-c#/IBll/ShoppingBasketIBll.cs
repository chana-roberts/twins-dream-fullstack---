using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IBll
{
    public interface ShoppingBasketIBll<T>
    {
        public Task<int> UpdateBasket(List<T> list,int CostumerId,int month);

    }
}
