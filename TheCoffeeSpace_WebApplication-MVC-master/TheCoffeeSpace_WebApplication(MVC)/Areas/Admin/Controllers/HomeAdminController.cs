using Microsoft.AspNetCore.Mvc;
using TheCoffeeSpace_WebApplication_MVC_.Models;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;
using X.PagedList;
using X.PagedList.Mvc;
using TheCoffeeSpace_WebApplication_MVC_.Models.Authentication;

namespace TheCoffeeSpace_WebApplication_MVC_.Areas.Admin.Controllers
{
    [Area("admin")]
    [Route("admin")]
    public class HomeAdminController : Controller
    {
        DataTheSpaceCoffeeContext db = new DataTheSpaceCoffeeContext();
        [Route("")]
        [Route("index")]
        [Authentication]
        public IActionResult Index()
        {
            return View();
        }

        // sản phẩm
        [Route("danhmucsanpham")]
        public IActionResult DanhMucSanPham(int? page)
        {
            int pageSize = 12;
            int pageNumber = page == null || page < 0 ? 1 : page.Value;
            var lstsanpham = db.TbSanPhams.AsNoTracking().OrderBy(x => x.TenSanPham);
            PagedList<TbSanPham> lst = new PagedList<TbSanPham>(lstsanpham, pageNumber, pageSize);
            return View(lst);
        }

        [Route("timsanpham")]
        public ActionResult TimSanPham(string tenSanPham)
        {
            var sanPham = db.TbSanPhams.Where(t => t.TenSanPham.Contains(tenSanPham)).ToList();
            return View(sanPham);
        }

        [Route("ThemSanPhamMoi")]
        [HttpGet]
        public IActionResult ThemSanPhamMoi()
        {
            ViewBag.MaNhomSP = new SelectList(db.TbNhomSanPhams.ToList(), "MaNhomSp", "TenNhomSp");
            return View();
        }
        [Route("ThemSanPhamMoi")]
        [HttpPost]

        public IActionResult ThemSanPhamMoi(TbSanPham sanPham)
        {
            if (ModelState.IsValid)
            {
                db.TbSanPhams.Add(sanPham);
                db.SaveChanges();
                return RedirectToAction("DanhMucSanPham");
            }
            return View(sanPham);
        }

        [Route("SuaSanPham")]
        [HttpGet]
        public IActionResult SuaSanPham(string maSanPham)
        {
            var sanPham = db.TbCuaHangs.Find(maSanPham);
            ViewBag.MaNhomSP = new SelectList(db.TbNhomSanPhams.ToList(), "MaNhomSp", "TenNhomSp");
            return View(sanPham);
        }
        [Route("SuaSanPham")]
        [HttpPost]
        public IActionResult SuaSanPham(TbSanPham sanPham)
        {
            if (ModelState.IsValid)
            {
                db.Update(sanPham);
                db.SaveChanges();
                return RedirectToAction("DanhMucSanPham");
            }
            return View(sanPham);
        }



        // topping
        [Route("danhmuctopping")]
        public IActionResult DanhMucTopping(int? page)
        {
            int pageSize = 12;
            int pageNumber = page == null || page < 0 ? 1 : page.Value;
            var lsttopping = db.TbToppings.AsNoTracking().OrderBy(x => x.TenTopping);
            PagedList<TbTopping> lst = new PagedList<TbTopping>(lsttopping, pageNumber, pageSize);
            return View(lst);
        }

        [Route("ThemTopping")]
        [HttpGet]
        public IActionResult ThemTopping()
        {
            return View();
        }
        [Route("ThemTopping")]
        [HttpPost]

        public IActionResult ThemTopping(TbTopping topping)
        {
            if (ModelState.IsValid)
            {
                db.TbToppings.Add(topping);
                db.SaveChanges();
                return RedirectToAction("DanhMucTopping");
            }
            return View(topping);
        }

        [Route("timtopping")]
        public ActionResult TimTopping(string tenTopping)
        {
            var topping = db.TbToppings.Where(t => t.TenTopping.Contains(tenTopping)).ToList();
            return View(topping);
        }

        [Route("SuaTopping")]
        [HttpGet]
        public IActionResult SuaTopping(string maTopping)
        {
            var topping = db.TbToppings.Find(maTopping);
            return View(topping);

        }

        [Route("SuaTopping")]
        [HttpPost]
        public IActionResult SuaTopping(TbTopping topping)
        {
            if (ModelState.IsValid)
            {
                db.Update(topping);
                db.SaveChanges();
                return RedirectToAction("DanhMucTopping");
            }
            return View(topping);
        }

        [Route("XoaToping")]
        [HttpGet]
        public IActionResult XoaTopping(string maTopping)
        {
            TempData["Message"] = "";
            var chiTietToppings = db.TbChiTietToppingHdbs.Where(x => x.MaTopping == maTopping).ToList();
            if (chiTietToppings.Count() > 0)
            {
                TempData["Message"] = "Không xóa được sản phẩm này !!!";
                return RedirectToAction("DanhMucTopping");
            }
            db.Remove(db.TbToppings.Find(maTopping));
            db.SaveChanges();
            TempData["Message"] = "Sản phẩm đã được xóa";
            return RedirectToAction("DanhMucTopping");
        }
        // cửa hàng
        [Route("danhmuccuahang")]
        public IActionResult DanhMucCuaHang(int? page)
        {
            int pageSize = 12;
            int pageNumber = page == null || page < 0 ? 1 : page.Value;
            var lstcuahang = db.TbCuaHangs.AsNoTracking().OrderBy(x => x.TenCuaHang);
            PagedList<TbCuaHang> lst = new PagedList<TbCuaHang>(lstcuahang, pageNumber, pageSize);
            return View(lst);
        }

        [Route("ThemCuaHangMoi")]
        [HttpGet]
        public IActionResult ThemCuaHangMoi()
        {
            return View();
        }
        [Route("ThemCuaHangMoi")]
        [HttpPost]
        public IActionResult ThemCuaHangMoi(TbCuaHang cuaHang)
        {
            if (ModelState.IsValid)
            {
                db.TbCuaHangs.Add(cuaHang);
                db.SaveChanges();
                return RedirectToAction("DanhMucCuaHang");
            }
            return View(cuaHang);
        }

        [Route("timcuahang")]
        public ActionResult TimCuaHang(string tenCuaHang)
        {
            var cuaHang = db.TbCuaHangs.Where(t => t.TenCuaHang.Contains(tenCuaHang)).ToList();
            return View(cuaHang);
        }

        [Route("SuaCuaHang")]
        [HttpGet]
        public IActionResult SuaCuaHang(string maCuaHang)
        {
            var cuaHang = db.TbCuaHangs.Find(maCuaHang);
            return View(cuaHang);
        }
        [Route("SuaCuaHang")]
        [HttpPost]
        public IActionResult SuaCuaHang(TbCuaHang cuaHang)
        {
            if (ModelState.IsValid)
            {
                db.Update(cuaHang);
                db.SaveChanges();
                return RedirectToAction("DanhMucCuaHang");
            }
            return View(cuaHang);
        }

        [Route("XoaCuaHang")]
        [HttpGet]
        public IActionResult XoaCuaHang(string maCuaHang)
        {
            TempData["Message"] = "";
            var nhaCungCaps = db.TbNhaCungCaps.Where(x => x.MaNhaCungCap == maCuaHang).ToList();
            if (nhaCungCaps.Count() > 0)
            {
                TempData["Message"] = "Không xóa được cửa hàng này !!!";
                return RedirectToAction("DanhMucCuaHang");
            }
            db.Remove(db.TbCuaHangs.Find(maCuaHang));
            db.SaveChanges();
            TempData["Message"] = "Cửa hàng đã được xóa";
            return RedirectToAction("DanhMucCuaHang");
        }

        // kho
        [Route("danhmuckho")]
        public IActionResult DanhMucKho(int? page)
        {
            int pageSize = 6;
            int pageNumber = page == null | page < 0 ? 1 : page.Value;
            var lstKho = db.TbKhoVatTuChes.OrderBy(x => x.MaCuaHang);
            PagedList<TbKhoVatTuCh> lst = new PagedList<TbKhoVatTuCh>(lstKho, pageNumber, pageSize);
            return View(lst);
        }

        // vật tư
        [Route("danhmucvattu")]
        public IActionResult DanhMucVatTu(int? page)
        {
            int pageSize = 6;
            int pageNumber = page == null | page < 0 ? 1 : page.Value;
            var lstVatTu = db.TbVatTus.OrderBy(x => x.MaVatTu);
            PagedList<TbVatTu> lst = new PagedList<TbVatTu>(lstVatTu, pageNumber, pageSize);
            return View(lst);
        }

        [Route("timvattu")]
        public ActionResult TimVatTu(string tenVatTu)
        {
            var vatTu = db.TbVatTus.Where(t => t.TenVatTu.Contains(tenVatTu)).ToList();
            return View(vatTu);
        }

        // hóa đơn nhập
        [Route("hoadonnhap")]
        public IActionResult HoaDonNhap(int? page)
        {
            int pageSize = 6;
            int pageNumber = page == null | page < 0 ? 1 : page.Value;
            var lstHDNhap= db.TbHoaDonNhaps.OrderBy(x => x.MaHoaDonNhap);
            PagedList<TbHoaDonNhap> lst = new PagedList<TbHoaDonNhap>(lstHDNhap, pageNumber, pageSize);
            return View(lst);
        }

        [Route("ThemHoaDonNhap")]
        [HttpGet]
        public IActionResult ThemHoaDonNhap()
        {
            ViewBag.MaNhaCungCap =  new SelectList(db.TbNhaCungCaps.ToList(), "MaNhaCungCap", "TenNhaCungCap");
            return View();
        }
        [Route("ThemHoaDonNhap")]
        [HttpPost]
        public IActionResult ThemHoaDonNhap(TbHoaDonNhap hoaDonNhap)
        {
            if (ModelState.IsValid)
            {
                db.TbHoaDonNhaps.Add(hoaDonNhap);
                db.SaveChanges();
                return RedirectToAction("HoaDonNhap");
            }
            return View(hoaDonNhap);
        }

        [Route("SuaHoaDonNhap")]
        [HttpGet]
        public IActionResult SuaHoaDonNhap(string maHoaDonNhap)
        {
            var hoaDonNhap = db.TbHoaDonNhaps.Find(maHoaDonNhap);
            ViewBag.MaNhaCungCap = new SelectList(db.TbNhaCungCaps.ToList(), "MaNhaCungCap", "TenNhaCungCap");
            return View(hoaDonNhap);
        }
        [Route("SuaHoaDonNhap")]
        [HttpPost]
        public IActionResult SuaHoaDonNhap(TbHoaDonNhap hoaDonNhap)
        {
            if (ModelState.IsValid)
            {
                db.Update(hoaDonNhap);
                db.SaveChanges();
                return RedirectToAction("HoaDonNhap");
            }
            return View(hoaDonNhap);
        }



        ///
        // hóa đơn bán
        [Route("hoadonban")]
        public IActionResult HoaDonBan(int? page)
        {
            int pageSize = 6;
            int pageNumber = page == null | page < 0 ? 1 : page.Value;
            var lstHDBan = db.TbHoaDonBans.OrderBy(x => x.MaHoaDonBan);
            PagedList<TbHoaDonBan> lst = new PagedList<TbHoaDonBan>(lstHDBan, pageNumber, pageSize);
            return View(lst);
        }

        //chi tiết hóa đơn nhập
        [Route("chitietnhap")]
        public IActionResult ChiTietNhap(int? page)
        {
            int pageSize = 6;
            int pageNumber = page == null | page < 0 ? 1 : page.Value;
            var lstCTNhap = db.TbChiTietHdns.OrderBy(x => x.MaHoaDonNhap);
            PagedList<TbChiTietHdn> lst = new PagedList<TbChiTietHdn>(lstCTNhap, pageNumber, pageSize);
            return View(lst);
        }


        //chi tiết hóa đơn bán
        [Route("chitietban")]
        public IActionResult ChiTietBan(int? page)
        {
            int pageSize = 6;
            int pageNumber = page == null | page < 0 ? 1 : page.Value;
            var lstCTBan = db.TbChiTietHdbs.OrderBy(x => x.MaHoaDonBan);
            PagedList<TbChiTietHdb> lst = new PagedList<TbChiTietHdb>(lstCTBan, pageNumber, pageSize);
            return View(lst);
        }


        [Route("nhacungcap")]
        public IActionResult NhaCungCap(int? page)
        {
            int pageSize = 6;
            int pageNumber = page == null | page < 0 ? 1 : page.Value;
            var lstNCC = db.TbNhaCungCaps.OrderBy(x => x.MaNhaCungCap);
            PagedList<TbNhaCungCap> lst = new PagedList<TbNhaCungCap>(lstNCC, pageNumber, pageSize);
            return View(lst);
        }

    }
}
