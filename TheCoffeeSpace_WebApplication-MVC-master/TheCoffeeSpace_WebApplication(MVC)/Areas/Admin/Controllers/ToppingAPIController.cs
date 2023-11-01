using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using TheCoffeeSpace_WebApplication_MVC_.Models;

namespace TheCoffeeSpace_WebApplication_MVC_.Areas.Admin.Controllers
{
    [Produces("application/json")]
    [Route("coffee/topping")]
    [ApiController]
    public class ToppingAPIController : ControllerBase
    {
        DataTheSpaceCoffeeContext db = new DataTheSpaceCoffeeContext();

        public ToppingAPIController(DataTheSpaceCoffeeContext db)
        {
            this.db = db;
        }
        [HttpGet]
        public IEnumerable<TbTopping> GetTbToppings()
        {
            return db.TbToppings.AsEnumerable();
        }

        [HttpGet]
        [Route("{maTopping}")]
        public TbTopping GetTbToppings(string maTopping)
        {
            return db.TbToppings.Find(maTopping);
        }

        [HttpPost]
        public IActionResult Post(TbTopping topping)
        {
            var timTopping = db.TbToppings.Find(topping.MaTopping);
            if (timTopping != null)
            {
                return Ok("Mã này đã có");
            }
            else
            {
                db.TbToppings.Add(topping);
                db.SaveChanges();
            }
            return Ok(topping);
        }
    }
}
