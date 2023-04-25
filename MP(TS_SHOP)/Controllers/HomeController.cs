using Microsoft.Ajax.Utilities;
using Microsoft.AspNet.Identity;
using MP_TS_SHOP_.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Metadata.W3cXsd2001;
using System.Web;
using System.Web.Mvc;
using System.Xml.Linq;
using System.Security.Principal;


namespace MP_TS_SHOP_.Controllers
{
    public class HomeController : Controller
    {
        public class ViewModel
        {
            public IEnumerable<User> User { get; set; }
            public IEnumerable<Comment> Comments { get; set; }
            public IEnumerable<Product> products  { get; set; }
            public IEnumerable<Category> categories { get; set; }

        }
        TS_SHOPEntitiess db = new TS_SHOPEntitiess();

        
        public ActionResult Home()
        {
            try
            {
                var ASPid = User.Identity.GetUserId();

                var Userid = db.Users.FirstOrDefault(x => x.Id == ASPid).UserId;
                Session["Userid"] = Userid;
            }
            catch { }
            var categories = db.Categories.ToList();
            var Myproducts = db.Products.ToList();
            

            return View(Tuple.Create(categories, Myproducts));

            



        }



        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult PersonalProfile()
        {

            string id = User.Identity.GetUserId();
            
            ViewModel vm = new ViewModel
            {
                User = db.Users.Where(x => x.Id == id).ToList(),
                Comments = db.Comments.ToList(),
                products = db.Products.ToList()
            };
            return View(vm);
        }

        public ActionResult ProductOwnerProfile(int ? id)
        {
            ViewBag.id =id;
            ViewModel vm2 = new ViewModel
            {
                User = db.Users.Where(x=>x.UserId==id).ToList(),
                Comments = db.Comments.Where(x => x.UserId == id).ToList(),
                products = db.Products.Where(x => x.UserID == id).ToList(),
            };
            return View("PersonalProfile", vm2);
        }
        [HttpGet]
        public ActionResult Catigory(int ? id)
        {
            
            List<int> categoriesCount = new List<int>();
            foreach (var item in db.Categories)
            {
                var categoriesId = db.Categories.FirstOrDefault(z => z.CategoryName == item.CategoryName).CategoryId;
                var count = db.Products.Where(x => x.CategoryId == categoriesId && x.State==true).Count();
                categoriesCount.Add(count);

            }
            ViewBag.categoriesCount = categoriesCount.ToArray();
            




            if (id == 0 || id is string || id==null) {
                return RedirectToAction("Home");
            }
            var categories = db.Categories.ToList();
            var Myproducts = db.Products.Where(x => x.CategoryId == id).ToList();

            ViewBag.categoriesName = db.Categories.FirstOrDefault(x => x.CategoryId == id).CategoryName;
            var numberOfResult = db.Products.Where(x => x.CategoryId == id).Count();
            string[] monthNames = new string[] {"January", "February", "March", "April","May", "June", "July", "August","September", "October", "November", "December"
};
            int month = DateTime.Now.Month;
            ViewBag.Result = numberOfResult.ToString()+" Results on "+DateTime.Now.Day + monthNames[month] + " , "+ DateTime.Now.Year;

            return View(Tuple.Create(categories, Myproducts));
        }
       
        public ActionResult Single(int? id)
        {
            ViewBag.ProductOwnerImage = db.Products.FirstOrDefault(x => x.ProductId == id).User.UserImage;
            ViewBag.ProductOwnerName = db.Products.FirstOrDefault(x => x.ProductId == id).User.Name;
            ViewBag.ProductOwnerLocation = db.Products.FirstOrDefault(x => x.ProductId == id).User.UserLocation;
            ViewBag.ProductOwnerId = db.Products.FirstOrDefault(x => x.ProductId == id).User.UserId;
            return View(db.Products.Where(x => x.ProductId == id).ToList());
        }

        public ActionResult ProviderDashboard()
        {
            var ASPid =User.Identity.GetUserId();

            var Userid = db.Users.FirstOrDefault(x=>x.Id== ASPid).UserId;
            var obj =db.Subscriptions.SingleOrDefault(x => x.ProviderId == Userid);
            //foreach (var item in db.Subscriptions)
            //{
            if (obj != null)
            {


                var subId = obj.SubscriptionNumber;
                var start = obj.StartDate;
                DateTime end1 = DateTime.Parse(start.ToString()).AddDays(2);
                DateTime end2 = DateTime.Parse(start.ToString()).AddMonths(2);
                DateTime end3 = DateTime.Parse(start.ToString()).AddMonths(6);

                if (DateTime.Now > end1 || DateTime.Now > end2 || DateTime.Now > end3)
                {
                    return RedirectToAction("Home");

                }
                else
                {
                    ViewBag.warrning = "Hiiiiiiiii";
                    if (subId == 1)
                    {
                        var x = DateTime.Now.Date.AddDays(2);
                        if (DateTime.Now.Date.AddDays(14) == end1.Date)
                        {
                            ViewBag.warrning = "Last Tree Day";

                        }

                    }
                    else if (subId == 2)
                    {
                        if (DateTime.Now.AddDays(57) == end2)
                        {
                            ViewBag.warrning = "Last Tree Day";

                        }
                    }
                    else
                    {
                        if (DateTime.Now.AddDays(177) == end3)
                        {
                            ViewBag.warrning = "Last Tree Day";

                        }
                    }

                }

            }
            else
            {
                return RedirectToAction("Subscriptions");
            }

            //    }

            //}
            
            string id = User.Identity.GetUserId();
            
            ViewModel vm = new ViewModel
            {
                User = db.Users.Where(x => x.Id == id).ToList(),
                Comments = db.Comments.ToList(),
                products = db.Products.ToList()
                
            };
            return View(vm);
        }
        public ActionResult Subscriptions()
        {
            return View();
        }
        


        public ActionResult test(int ID)
        {
            
                Subscription Obj = new Subscription();
                Obj.SubscriptionNumber = ID;
                Obj.StartDate = DateTime.Now;
                var ASPid = User.Identity.GetUserId();
                var Userid = db.Users.FirstOrDefault(x => x.Id == ASPid).UserId;
                Obj.ProviderId = Userid;
                db.Subscriptions.Add(Obj);
                db.SaveChanges();
                return RedirectToAction( "Index","ProductsProvider");
            
        }

    }
}