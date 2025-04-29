using Microsoft.AspNetCore.Mvc;

namespace TD.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductController : ControllerBase
    {
       
        IBll.ProductIBll<Dto.ProductDto> c;

        public ProductController(IBll.ProductIBll<Dto.ProductDto> c)
        {
            this.c = c;
        }

        [HttpGet("all")]
        public async Task<List<Dto.ProductDto>> GetAsync()
        {
          
            return await c.SelectAllAsync();
        }

        [HttpGet("SlowSelect")]
        public async Task<List<Dto.ProductDto>> SlowSelectAsync()
        {
          
            return await c.SlowSelectAsyncD();
        }

        [HttpGet("filter")]
        public async Task<List<Dto.ProductDto>> FilterAsync(int? gender,int? category)
        {
            
            return await c.FilteringAsync(gender,category);
        }

    }
}
