using Microsoft.AspNetCore.Mvc;

namespace TD.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CostumerController : ControllerBase
    {
        IDal.CostumerIDal<Dto.CostumerDto> p;
        IBll.CostumerIBll<Dto.CostumerDto> c;

        public CostumerController(IBll.CostumerIBll<Dto.CostumerDto> c, IDal.CostumerIDal<Dto.CostumerDto> p)
        {
            this.c = c;
            this.p = p;
        }

        [HttpGet("login")]
        public async Task<Dto.CostumerDto> GetAsync(string m,string n)
        {
            //if (string.IsNullOrEmpty(m) || string.IsNullOrEmpty(n))
            //{
            //    return BadRequest("Both parameters are required.");
            //}
            //   Bll.ProductBll c = new Bll.ProductBll();
            return await c.LogInByMailAndName(m,n);
        }

        [HttpPost("add")]
        public Task<int> Post([FromBody] Dto.CostumerDto m)
        {
            // IDal.CostumerIDal<Dto.CostumerDto> p;

            //Bll.CostumerBll c = new Bll.CostumerBll(p);
            Console.WriteLine("h-add");
            return c.AddAsync(m);
        }

        [HttpGet("all")]
        public async Task<List<Dto.CostumerDto>> GetAsync()
        {
            //   Bll.ProductBll c = new Bll.ProductBll();
            return await c.SelectAllAsync();
        }
    }
}
