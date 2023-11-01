using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using TheCoffeeSpace_WebApplication_MVC_.Models;

namespace TheCoffeeSpace_WebApplication_MVC_.Areas.Admin.Controllers
{
    [Produces("application/json")]
    [Route("coffee/cuahang")]
    [ApiController]

    public class CuaHangAPIController : ControllerBase
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
        public CuaHangAPIController(DataTheSpaceCoffeeContext db)
        {
            this.db = db;
        }
        [HttpGet]
        public IEnumerable<TbCuaHang> GetTbCuaHangs()
        {
            return db.TbCuaHangs.AsEnumerable();
        }

        [HttpGet]
        [Route("{maCuaHang}")]
        public TbCuaHang GetTbCuaHangs(string maCuaHang)
        {
            return db.TbCuaHangs.Find(maCuaHang);
        }

        [HttpPost]
        public IActionResult Post(TbCuaHang cuaHang)
        {
            var timCuaHang = db.TbCuaHangs.Find(cuaHang.MaCuaHang);
            if (timCuaHang != null)
            {
                return Ok("Mã này đã có");
            }
            else
            {
                db.TbCuaHangs.Add(cuaHang);
                db.SaveChanges();
            }
            return Ok(cuaHang);
        }

        [HttpPut]
        [Route("{maCuaHang}")]
        public IActionResult Put(string maCuaHang, TbCuaHang cuaHang)
        {
            if (maCuaHang != cuaHang.MaCuaHang)
            {
                return NotFound("Mã Cửa Hàng Không Khớp!!!");
            }
            else
            {
                var timCuaHang = db.TbCuaHangs.Find(cuaHang.MaCuaHang);
                if (timCuaHang != null)
                {
                    timCuaHang.TenCuaHang = cuaHang.TenCuaHang;
                    timCuaHang.DiaChi = cuaHang.DiaChi;
                    timCuaHang.SoDienThoai = cuaHang.SoDienThoai;
                    timCuaHang.Email = cuaHang.Email;
                    timCuaHang.Fanpage = cuaHang.Fanpage;
                    db.SaveChanges();
                }
                else
                {
                    return NotFound("Mã Cửa Hàng Sửa Không Tìm Thấy !!!");
                }
                return Ok(cuaHang);
            }
        }

        [HttpDelete]
        [Route("{maCuaHang}")]
        public IActionResult Delete(string maCuaHang)
        {
            var timCuaHang = db.TbCuaHangs.Find(maCuaHang);
            if (timCuaHang != null)
            {
                db.Remove(timCuaHang);
                db.SaveChanges();
                return Ok(timCuaHang);
            }
            else
            {
                return NotFound("Không Thấy Cửa Hàng Cần Xóa!!!");
            }
        }

    }
}
