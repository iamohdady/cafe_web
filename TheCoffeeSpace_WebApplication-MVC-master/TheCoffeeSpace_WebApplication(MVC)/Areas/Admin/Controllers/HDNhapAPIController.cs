using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using TheCoffeeSpace_WebApplication_MVC_.Models;

namespace TheCoffeeSpace_WebApplication_MVC_.Areas.Admin.Controllers
{
    [Produces("application/json")]
    [Route("coffee/hoadonnhap")]
    [ApiController]
    public class HDNhapAPIController : ControllerBase
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
        public HDNhapAPIController(DataTheSpaceCoffeeContext db)
        {
            this.db = db;
        }
        [HttpGet]
        public IEnumerable<TbHoaDonNhap> GetTbHoaDonNhaps()
        {
            return db.TbHoaDonNhaps.AsEnumerable();
        }

        [HttpGet]
        [Route("{maHoaDonNhap}")]
        public TbHoaDonNhap GetTbHoaDonNhaps(string maHDNhap)
        {
            return db.TbHoaDonNhaps.Find(maHDNhap);
        }

        [HttpPost]
        public IActionResult Post(TbHoaDonNhap hoaDonNhap)
        {
            var timHoaDonN = db.TbHoaDonNhaps.Find(hoaDonNhap.MaHoaDonNhap);
            if (timHoaDonN != null)
            {
                return Ok("Mã này đã có");
            }
            else
            {
                db.TbHoaDonNhaps.Add(hoaDonNhap);
                db.SaveChanges();
            }
            return Ok(hoaDonNhap);
        }

        [HttpPut]
        [Route("{maHoaDonNhap}")]
        public IActionResult Put(string maHDNhap, TbHoaDonNhap hoaDonNhap)
        {
            if (maHDNhap != hoaDonNhap.MaHoaDonNhap)
            {
                return NotFound("Mã Hóa Đơn Nhập Không Khớp!!!");
            }
            else
            {
                var timHoaDonN = db.TbHoaDonNhaps.Find(hoaDonNhap.MaHoaDonNhap);
                if (timHoaDonN != null)
                {
                    timHoaDonN.NgayLap = hoaDonNhap.NgayLap;
                    timHoaDonN.MaNhaCungCap = hoaDonNhap.MaNhaCungCap;
                    
                    db.SaveChanges();
                }
                else
                {
                    return NotFound("Mã Hóa Đơn Nhập Sửa Không Tìm Thấy !!!");
                }
                return Ok(hoaDonNhap);
            }
        }

        [HttpDelete]
        [Route("{maHoaDonNhap}")]
        public IActionResult Delete(string maHDNhap)
        {
            var timHoaDonN = db.TbHoaDonNhaps.Find(maHDNhap);
            if (timHoaDonN != null)
            {
                db.Remove(timHoaDonN);
                db.SaveChanges();
                return Ok(timHoaDonN);
            }
            else
            {
                return NotFound("Không Thấy Hóa Đơn Nhập Cần Xóa!!!");
            }
        }
    }
}
