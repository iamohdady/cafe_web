using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using TheCoffeeSpace_WebApplication_MVC_.Models;


namespace TheCoffeeSpace_WebApplication_MVC_.Areas.Admin.Controllers
{
    [Produces("application/json")]
    [Route("coffee/nhacungcap")]
    [ApiController]
    public class NhaCCAPIController : ControllerBase
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
        public NhaCCAPIController(DataTheSpaceCoffeeContext db)
        {
            this.db = db;
        }
        [HttpGet]
        public IEnumerable<TbNhaCungCap> GetTbNhaCungCaps()
        {
            return db.TbNhaCungCaps.AsEnumerable();
        }

        [HttpGet]
        [Route("{maNhaCungCap}")]
        public TbNhaCungCap GetTbNhaCungCaps(string maNhaCungCap)
        {
            return db.TbNhaCungCaps.Find(maNhaCungCap);
        }

        [HttpPost]
        public IActionResult Post(TbNhaCungCap nhaCungCap)
        {
            var timNhaCungCap = db.TbNhaCungCaps.Find(nhaCungCap.MaNhaCungCap);
            if (timNhaCungCap != null)
            {
                return Ok("Mã này đã có");
            }
            else
            {
                db.TbNhaCungCaps.Add(nhaCungCap);
                db.SaveChanges();
            }
            return Ok(nhaCungCap);
        }

        [HttpPut]
        [Route("{maNhaCungCap}")]
        public IActionResult Put(string maNhaCungCap, TbNhaCungCap nhaCungCap)
        {
            if (maNhaCungCap != nhaCungCap.MaNhaCungCap)
            {
                return NotFound("Mã Nhà Cung Cấp Không Khớp!!!");
            }
            else
            {
                var timNhaCungCap = db.TbNhaCungCaps.Find(nhaCungCap.MaNhaCungCap);
                if (timNhaCungCap != null)
                {
                    timNhaCungCap.TenNhaCungCap = nhaCungCap.TenNhaCungCap;
                    timNhaCungCap.DiaChi = nhaCungCap.DiaChi;
                    timNhaCungCap.SoDienThoai = nhaCungCap.SoDienThoai;
                    timNhaCungCap.Email = nhaCungCap.Email;
                    db.SaveChanges();
                }
                else
                {
                    return NotFound("Mã Nhà Cung Cấp Sửa Không Tìm Thấy !!!");
                }
                return Ok(nhaCungCap);
            }
        }

        [HttpDelete]
        [Route("{maNhaCungCap}")]
        public IActionResult Delete(string maNhaCungCap)
        {
            var timNhaCungCap = db.TbNhaCungCaps.Find(maNhaCungCap);
            if (timNhaCungCap != null)
            {
                db.Remove(timNhaCungCap);
                db.SaveChanges();
                return Ok(timNhaCungCap);
            }
            else
            {
                return NotFound("Không Thấy Nhà Cung Cấp Cần Xóa!!!");
            }
        }
    }
}
