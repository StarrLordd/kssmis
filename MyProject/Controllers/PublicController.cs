using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MyProject.Models;
using System.Data;
using System.Net;

namespace MyProject.Controllers
{
    public class PublicController : Controller
    {
        //
        // GET: /Public/
        DBManager dm = new DBManager();
        public ActionResult Index()
        {

            DataTable dt = dm.ExecuteSelect("select * from Tbl_Notification order by NotiId desc");
            List<Notification> Lst = new List<Notification>();
            foreach (DataRow dr in dt.Rows)
            {
                Notification not = new Notification();
                not.Id = int.Parse(dr[0].ToString());
                not.noti = dr[1].ToString();
                not.date = dr[2].ToString();
                Lst.Add(not);
            }
            return View(Lst);
        }
        public ActionResult saveEnq(string uname, string email, string num, string mssg)
        {
            string dt = DateTime.Now.ToString();
            string cmd = "insert into Tbl_Enquiry values('"+uname+"','"+email+"','"+num+"','"+mssg+"','"+dt+"')";
            bool ob = dm.ExecuteInsertUpdateDelete(cmd);
            var res = ob == true ? "THanks for your Enquiry, We'll reply Sortly." : "Failed";
            return Json(res,JsonRequestBehavior.AllowGet);
        }
        public ActionResult About()
        {
            return View();
        }
        public ActionResult ContactUs()
        {
            return View();
        }
        [HttpGet]
        public ActionResult LogIn()
        {
            return View();
        }
        [HttpPost]
        public ActionResult LogIn(string uid,string pass)
        {
            MyCrypto Mc = new MyCrypto();
            pass = Mc.EncryptMyData(pass);
            string Command = "select *from Tbl_Login where UserId='" + uid + "' and pass='" + pass + "' and Utype='MANAGER'";
            object ob = dm.GetSingleVaue(Command);
            if (ob != null)
            {
                Session["userid"] = uid;
                return RedirectToAction("Welcome", "Manager");
            }
            else
            {
                ViewBag.res = "Invalid UserName or Password";
                return View();
            }
        }
        public ActionResult Review()
        {
            return View();
        }
        public ActionResult saveRev(string fname,string subject,string numb,string mssg,int star)
        {
            string dt=DateTime.Now.ToString();
            string cmmd="insert into Tbl_Rev values('"+fname+"','"+subject+"','"+mssg+"','"+numb+"','"+star+"','"+dt+"')";
            bool st = dm.ExecuteInsertUpdateDelete(cmmd);
            SmsSender ss = new SmsSender();
            string s = "Hello Mr/Ms. " + fname + ". THanks for Your Review. We Hope you got a better experience. Have a nice day . Thank you!";
            bool b=ss.SendSMS(numb,s);
            var x="";
            if (b == true)
            {
                x = st == true ? "Thanks for Review" : "Unable to send";

            }
            else
            {
                x = "failed";
            }
            return Json(x, JsonRequestBehavior.AllowGet);
        }

    }
}
