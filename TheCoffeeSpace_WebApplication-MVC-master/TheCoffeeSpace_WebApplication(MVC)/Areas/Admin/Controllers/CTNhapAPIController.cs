using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using TheCoffeeSpace_WebApplication_MVC_.Models;

namespace TheCoffeeSpace_WebApplication_MVC_.Areas.Admin.Controllers
{
    [Produces("application/json")]
    [Route("coffee/chitietnhap")]
    [ApiController]
    public class CTNhapAPIController : ControllerBase
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
        public CTNhapAPIController(DataTheSpaceCoffeeContext db)
        {
            this.db = db;
        }
        [HttpGet]
        public IEnumerable<TbChiTietHdn> GetTbChiTietHdns()
        {
            return db.TbChiTietHdns.AsEnumerable();
        }

        [HttpGet]
        [Route("{maHoaDonNhap}")]
        public TbChiTietHdn GetTbChiTietHdns(string maHoaDonN)
        {
            return db.TbChiTietHdns.Find(maHoaDonN);
        }

        [HttpPost]
        public IActionResult Post(TbChiTietHdn chiTietNhap)
        {
            var timChiTietN = db.TbChiTietHdns.Find(chiTietNhap.MaHoaDonNhap);
            if (timChiTietN != null)
            {
                return Ok("Mã này đã có");
            }
            else
            {
                db.TbChiTietHdns.Add(chiTietNhap);
                db.SaveChanges();
            }
            return Ok(chiTietNhap);
        }

        [HttpPut]
        [Route("{maHoaDonNhap}")]
        public IActionResult Put(string maHoaDonN, TbChiTietHdn chiTietNhap)
        {
            if (maHoaDonN != chiTietNhap.MaHoaDonNhap)
            {
                return NotFound("Mã Hóa Đơn Không Khớp!!!");
            }
            else
            {
                var timChiTietN = db.TbChiTietHdns.Find(chiTietNhap.MaHoaDonNhap);
                if (timChiTietN != null)
                {
                    timChiTietN.SoLuongNhap = chiTietNhap.SoLuongNhap;
                    timChiTietN.GiaNhap = chiTietNhap.GiaNhap;
                    timChiTietN.MaVatTu = chiTietNhap.MaVatTu;
                    db.SaveChanges();
                }
                else
                {
                    return NotFound("Mã Hóa Đơn Sửa Không Tìm Thấy !!!");
                }
                return Ok(chiTietNhap);
            }
        }

        [HttpDelete]
        [Route("{maHoaDonNhap}")]
        public IActionResult Delete(string maHoaDonN)
        {
            var timChiTietN = db.TbChiTietHdns.Find(maHoaDonN);
            if (timChiTietN != null)
            {
                db.Remove(timChiTietN);
                db.SaveChanges();
                return Ok(timChiTietN);
            }
            else
            {
                return NotFound("Không Thấy Chi Tiết Nhập Cần Xóa!!!");
            }
        }
    }
}
