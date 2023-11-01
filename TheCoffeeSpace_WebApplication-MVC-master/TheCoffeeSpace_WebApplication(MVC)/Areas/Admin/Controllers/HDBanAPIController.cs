using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using TheCoffeeSpace_WebApplication_MVC_.Models;

namespace TheCoffeeSpace_WebApplication_MVC_.Areas.Admin.Controllers
{
    [Produces("application/json")]
    [Route("coffee/hoadonban")]
    [ApiController]
    public class HDBanAPIController : ControllerBase
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
        public HDBanAPIController(DataTheSpaceCoffeeContext db)
        {
            this.db = db;
        }
        [HttpGet]
        public IEnumerable<TbHoaDonBan> GetTbHoaDonBans()
        {
            return db.TbHoaDonBans.AsEnumerable();
        }

        [HttpGet]
        [Route("{maHoaDonBan}")]
        public TbHoaDonBan GetTbHoaDonBans(string maHDBan)
        {
            return db.TbHoaDonBans.Find(maHDBan);
        }

        [HttpPost]
        public IActionResult Post(TbHoaDonBan hoaDonBan)
        {
            var timHoaDonB = db.TbHoaDonBans.Find(hoaDonBan.MaHoaDonBan);
            if (timHoaDonB != null)
            {
                return Ok("Mã này đã có");
            }
            else
            {
                db.TbHoaDonBans.Add(hoaDonBan);
                db.SaveChanges();
            }
            return Ok(hoaDonBan);
        }

        [HttpPut]
        [Route("{maHoaDonBan}")]
        public IActionResult Put(string maHDBan, TbHoaDonBan hoaDonBan)
        {
            if (maHDBan != hoaDonBan.MaHoaDonBan)
            {
                return NotFound("Mã Hóa Đơn Bán Không Khớp!!!");
            }
            else
            {
                var timHoaDonB = db.TbHoaDonBans.Find(hoaDonBan.MaHoaDonBan);
                if (timHoaDonB != null)
                {
                    timHoaDonB.NgayBan = hoaDonBan.NgayBan;
                    timHoaDonB.MaKhachHang = hoaDonBan.MaKhachHang;

                    db.SaveChanges();
                }
                else
                {
                    return NotFound("Mã Hóa Đơn Bán Sửa Không Tìm Thấy !!!");
                }
                return Ok(hoaDonBan);
            }
        }

        [HttpDelete]
        [Route("{maHoaDonBan}")]
        public IActionResult Delete(string maHDBan)
        {
            var timHoaDonB = db.TbHoaDonBans.Find(maHDBan);
            if (timHoaDonB != null)
            {
                db.Remove(timHoaDonB);
                db.SaveChanges();
                return Ok(timHoaDonB);
            }
            else
            {
                return NotFound("Không Thấy Hóa Đơn Bán Cần Xóa!!!");
            }
        }
    }
}
