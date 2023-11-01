using Microsoft.AspNetCore.Mvc;
using TheCoffeeSpace_WebApplication_MVC_.Models;

namespace TheCoffeeSpace_WebApplication_MVC_.Controllers
{
    public class AccessController : Controller
    {
        DataTheSpaceCoffeeContext db = new DataTheSpaceCoffeeContext();
        [HttpGet]
        public IActionResult Login()
        {
            if(HttpContext.Session.GetString("UserName") == null)
            {
                return View();
            }
            else
            {
                return RedirectToAction("Index", "admin");
            }
            return View();
        }
        [HttpPost]
        public IActionResult Login(TbAdmin user)
        {
            if(HttpContext.Session.GetString("UserName") == null)
            {
                var u = db.TbAdmins.Where(x => x.Username.Equals(user.Username) && x.Password.Equals
                (user.Password)).FirstOrDefault();
                if(u != null)
                {
                    HttpContext.Session.SetString("UserName", u.Username.ToString());
                    return RedirectToAction("Index", "admin");
                }
            }
            return View();
        }

        public IActionResult Logout()
        {
            HttpContext.Session.Clear();
            HttpContext.Session.Remove("UserName");
            return RedirectToAction("Login", "Access");
        }
    }
}
