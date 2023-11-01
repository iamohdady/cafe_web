using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using TheCoffeeSpace_WebApplication_MVC_.Models;

namespace TheCoffeeSpace_WebApplication_MVC_.Areas.Admin.Controllers
{
    [Produces("application/json")]
    [Route("coffee/kho")]
    [ApiController]
    public class KhoAPIController : ControllerBase
    {
        DataTheSpaceCoffeeContext db = new DataTheSpaceCoffeeContext();
        /*[HttpGet]
            public IEnumerable<TbSanPham> GetAllSanPham()
            {
                var sanPham = (from p in db.TbSanPhams
                               select new TbSanPham
                               {
                                   MaSanPham = p.MaSanPham,
                                   TenSanPham = p.TenSanPham,
                                   GiaBan = p.GiaBan,
                                   HinhAnh = p.HinhAnh,
                                   GhiChu = p.GhiChu,
                                   MaNhomSp = p.MaNhomSp
                               }).ToList();
                return sanPham;
            }
            [HttpGet("{manhom}")]
            public IEnumerable<TbSanPham> GetSanPhamByCategory(string manhom)
            {
                var sanPham = (from p in db.TbSanPhams
                               where p.MaNhomSp== manhom
                               select new TbSanPham
                               {
                                   MaSanPham = p.MaSanPham,
                                   TenSanPham = p.TenSanPham,
                                   GiaBan = p.GiaBan,
                                   HinhAnh = p.HinhAnh,
                                   GhiChu = p.GhiChu,
                                   MaNhomSp = p.MaNhomSp
                               }).ToList();
                return sanPham;
            }*/
        public KhoAPIController(DataTheSpaceCoffeeContext db)
        {
            this.db = db;
        }
        [HttpGet]
        public IEnumerable<TbKhoVatTuCh> GetTbKhoVatTus()
        {
            return db.TbKhoVatTuChes.AsEnumerable();
        }

        [HttpGet]
        [Route("{maKho}")]
        public TbKhoVatTuCh GetTbKhoVatTus(string maKho)
        {
            return db.TbKhoVatTuChes.Find(maKho);
        }

        [HttpPost]
        public IActionResult Post(TbKhoVatTuCh kho)
        {
            var timKho = db.TbKhoVatTuChes.Find(kho.MaCuaHang);
            if (timKho != null)
            {
                return Ok("Mã này đã có");
            }
            else
            {
                db.TbKhoVatTuChes.Add(kho);
                db.SaveChanges();
            }
            return Ok(kho);
        }

        [HttpPut]
        [Route("{maKho}")]
        public IActionResult Put(string maKho, TbKhoVatTuCh kho)
        {
            if (maKho != kho.MaCuaHang)
            {
                return NotFound("Mã Nhà Cuả Hàng Không Khớp!!!");
            }
            else
            {
                var timKho = db.TbKhoVatTuChes.Find(kho.MaCuaHang);
                if (timKho != null)
                {
                    timKho.SoLuong = kho.SoLuong;
                    timKho.MaVatTu = kho.MaVatTu;
                    db.SaveChanges();
                }
                else
                {
                    return NotFound("Mã Nhà Cửa Hàng Sửa Không Tìm Thấy !!!");
                }
                return Ok(kho);
            }
        }

        [HttpDelete]
        [Route("{maKho}")]
        public IActionResult Delete(string maKho)
        {
            var timKho = db.TbKhoVatTuChes.Find(maKho);
            if (timKho != null)
            {
                db.Remove(timKho);
                db.SaveChanges();
                return Ok(timKho);
            }
            else
            {
                return NotFound("Không Thấy Kho Cần Xóa!!!");
            }
        }
    }
}
