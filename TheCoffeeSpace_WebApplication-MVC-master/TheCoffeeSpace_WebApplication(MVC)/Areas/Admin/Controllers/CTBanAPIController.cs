using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using TheCoffeeSpace_WebApplication_MVC_.Models;

namespace TheCoffeeSpace_WebApplication_MVC_.Areas.Admin.Controllers
{
    [Produces("application/json")]
    [Route("coffee/chitietban")]
    [ApiController]
    public class CTBanAPIController : ControllerBase
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
        public CTBanAPIController(DataTheSpaceCoffeeContext db)
        {
            this.db = db;
        }
        [HttpGet]
        public IEnumerable<TbChiTietHdb> GetTbChiTietHdbs()
        {
            return db.TbChiTietHdbs.AsEnumerable();
        }

        [HttpGet]
        [Route("{maHoaDonBan}")]
        public TbChiTietHdb GetTbChiTietHdbs(string maHoaDonB)
        {
            return db.TbChiTietHdbs.Find(maHoaDonB);
        }

        [HttpPost]
        public IActionResult Post(TbChiTietHdb chiTietBan)
        {
            var timChiTietB = db.TbChiTietHdbs.Find(chiTietBan.MaHoaDonBan);
            if (timChiTietB != null)
            {
                return Ok("Mã này đã có");
            }
            else
            {
                db.TbChiTietHdbs.Add(chiTietBan);
                db.SaveChanges();
            }
            return Ok(chiTietBan);
        }

        [HttpPut]
        [Route("{maHoaDonBan}")]
        public IActionResult Put(string maHoaDonB, TbChiTietHdb chiTietBan)
        {
            if (maHoaDonB != chiTietBan.MaHoaDonBan)
            {
                return NotFound("Mã Hóa Đơn Không Khớp!!!");
            }
            else
            {
                var timChiTietB = db.TbChiTietHdbs.Find(chiTietBan.MaHoaDonBan);
                if (timChiTietB != null)
                {
                    timChiTietB.SoLuong = chiTietBan.SoLuong;
                    timChiTietB.GiamGia = chiTietBan.GiamGia;
                    timChiTietB.MaHoaDonBan = chiTietBan.MaHoaDonBan;
                    timChiTietB.MaSanPham = chiTietBan.MaSanPham;
                    timChiTietB.MaKichThuoc = chiTietBan.MaKichThuoc;

                    db.SaveChanges();
                }
                else
                {
                    return NotFound("Mã Nhà Hóa Đơn Sửa Không Tìm Thấy !!!");
                }
                return Ok(chiTietBan);
            }
        }

        [HttpDelete]
        [Route("{maHoaDonBan}")]
        public IActionResult Delete(string maHoaDonB)
        {
            var timChiTietB = db.TbChiTietHdbs.Find(maHoaDonB);
            if (timChiTietB != null)
            {
                db.Remove(timChiTietB);
                db.SaveChanges();
                return Ok(timChiTietB);
            }
            else
            {
                return NotFound("Không Thấy Chi Tiết Bán Cần Xóa!!!");
            }
        }
    }
}
