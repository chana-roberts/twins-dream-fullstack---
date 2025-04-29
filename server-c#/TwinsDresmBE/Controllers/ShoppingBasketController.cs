using Dto;
using Microsoft.AspNetCore.Mvc;

namespace TD.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ShoppingBasketController : ControllerBase
    {

        IBll.ShoppingBasketIBll<Dto.PurchaseDetailsDto> c;

        public ShoppingBasketController(IBll.ShoppingBasketIBll<Dto.PurchaseDetailsDto> c)
        {
            this.c = c;

        }



        [HttpPost]
        public Task<int> Post([FromBody] List<PurchaseDetailsDto> list, int CostumerId, int month)
        {
            Console.WriteLine("h-add");
            return c.UpdateBasket(list, CostumerId, month);
        }


    }
}
