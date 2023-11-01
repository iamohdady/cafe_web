using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using TheCoffeeSpace_WebApplication_MVC_.Models;

namespace TheCoffeeSpace_WebApplication_MVC_.Areas.Admin.Controllers
{
    [Produces("application/json")]
    [Route("coffee/sanpham")]

    [ApiController]
    public class SanPhamAPIController : ControllerBase
    {
        DataTheSpaceCoffeeContext db = new DataTheSpaceCoffeeContext();
        public SanPhamAPIController(DataTheSpaceCoffeeContext db)
        {
            this.db = db;
        }
        // sản phẩm
        [HttpGet]
        public IEnumerable<TbSanPham> GetTbSanPhams()
        {
            return db.TbSanPhams.AsEnumerable();
        }

        [HttpGet]
        [Route("{maSanPham}")]
        public TbSanPham GetTbSanPhams(string maSanPham)
        {
            return db.TbSanPhams.Find(maSanPham);
        }

        [HttpPost]
        public IActionResult Post(TbSanPham sanPham)
        {
            var timSanPham = db.TbSanPhams.Find(sanPham.MaSanPham);
            if (timSanPham != null)
            {
                return Ok("Mã này đã có");
            }
            else
            {
                db.TbSanPhams.Add(sanPham);
                db.SaveChanges();
            }
            return Ok(sanPham);
        }

    }
}
