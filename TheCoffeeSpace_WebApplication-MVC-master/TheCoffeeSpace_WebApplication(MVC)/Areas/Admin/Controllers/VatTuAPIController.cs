using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using TheCoffeeSpace_WebApplication_MVC_.Models;

namespace TheCoffeeSpace_WebApplication_MVC_.Areas.Admin.Controllers
{
    [Produces("application/json")]
    [Route("coffee/vattu")]
    [ApiController]
    public class VatTuAPIController : ControllerBase
    {
        DataTheSpaceCoffeeContext db = new DataTheSpaceCoffeeContext();

        public VatTuAPIController(DataTheSpaceCoffeeContext db)
        {
            this.db = db;
        }
        [HttpGet]
        public IEnumerable<TbVatTu> GetTbVatTus()
        {
            return db.TbVatTus.AsEnumerable();
        }

        [HttpGet]
        [Route("{maVatTu}")]
        public TbVatTu GetTbVatTus(string maVatTu)
        {
            return db.TbVatTus.Find(maVatTu);
        }

        [HttpPost]
        public IActionResult Post(TbVatTu vatTu)
        {
            var timVatTu = db.TbVatTus.Find(vatTu.MaVatTu);
            if (timVatTu != null)
            {
                return Ok("Mã này đã có");
            }
            else
            {
                db.TbVatTus.Add(vatTu);
                db.SaveChanges();
            }
            return Ok(vatTu);
        }

        [HttpPut]
        [Route("{maVatTu}")]
        public IActionResult Put(string maVatTu, TbVatTu vatTu)
        {
            if (maVatTu != vatTu.MaVatTu)
            {
                return NotFound("Mã Nhà Vật Tư Không Khớp!!!");
            }
            else
            {
                var timVatTu = db.TbVatTus.Find(vatTu.MaVatTu);
                if (timVatTu != null)
                {
                    timVatTu.TenVatTu = vatTu.TenVatTu;
                    timVatTu.DonViTinh = vatTu.DonViTinh;
                    timVatTu.GhiChu = vatTu.GhiChu;
                    db.SaveChanges();
                }
                else
                {
                    return NotFound("Mã Vật Tư Sửa Không Tìm Thấy !!!");
                }
                return Ok(vatTu);
            }
        }

        [HttpDelete]
        [Route("{maVatTu}")]
        public IActionResult Delete(string maVatTu)
        {
            var timVatTu = db.TbVatTus.Find(maVatTu);
            if (timVatTu != null)
            {
                db.Remove(timVatTu);
                db.SaveChanges();
                return Ok(timVatTu);
            }
            else
            {
                return NotFound("Không Thấy Vật Tư Cần Xóa!!!");
            }
        }
    }

}
