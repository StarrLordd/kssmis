using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MyProject.Models;
using System.Data;
using System.IO;

namespace MyProject.Controllers
{
    public class ManagerController : Controller
    {
        //
        // GET: /Manager/
        DBManager Dm = new DBManager();

        /// <summary>
        /// For Session..............
        /// </summary>
        /// <returns></returns>
        [NonAction]
        private bool isValidUser()
        {
            if (Session["userid"] != null)
            {
                string uid = Session["userid"].ToString();
                string[] ar = Dm.getNameAndPhoto(uid);
                ViewBag.name = ar[0];
                ViewBag.pic = ar[1];
                return true;
            }
            else
            {
                return false;
            }
        }


        //Welcome Page/Dashboard
        
        public ActionResult Welcome()
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("LogIn", "Public");
            }
            return View();
        }


        ///Change Password
        [HttpGet]
        public ActionResult ChengePassword()
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("LogIn", "Public");
            }
            return View();
        }
        [HttpPost]
        public ActionResult ChengePassword(string pass,string cpass,string npass)
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("LogIn", "Public");
            }
            string msg="";
            //Change Password
            if (npass.Equals(cpass))
            {
                string epass, enewpass, command, uid;
                MyCrypto Mc = new MyCrypto();
                epass = Mc.EncryptMyData(pass);
                enewpass = Mc.EncryptMyData(npass);
                uid = Session["userid"].ToString();
                command = "Update Tbl_Login set pass='" + enewpass + "' where userid='" + uid + "' and pass='" + epass + "' ";
                bool b = Dm.ExecuteInsertUpdateDelete(command);
                if (b == true)
                    msg = "Password Change Successfully";
                else
                    msg = "Incorrect Current Password";
            }
            else
                msg = "New Password and Current Password must be same";
            ViewBag.msg = msg;
            return View();
        }



        //Trainee Registration............
        [HttpGet]
        public ActionResult TraneeRegi()
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("LogIn", "Public");
            }
            return View();
        }
        [HttpPost]
        public ActionResult TraneeRegi(string name, string fname, string gen, int clg, string cource, string year, string email, string mob, int tname, float rfees, float tfees, string dt, string promo, string rem)
        {
            
            if (isValidUser() == false)
            {
                return RedirectToAction("LogIn", "Public");
            }
            HttpPostedFileBase fb = Request.Files["tpic"];
            string Filename = Path.GetRandomFileName() + fb.FileName;
            fb.SaveAs(Server.MapPath("/Content/UserPics/" + Filename));
            string id = "KSS/",msg="",srno;
            string tyear = DateTime.Now.Year.ToString().Substring(2);
            if(tname == 2 || tname == 3)
                id = id+"ST-" + tyear;
            else
                id = id+"AP-" + tyear;
            string cmd = "Select  max(Srno) from Tbl_TraineeRegis where trainingId='" + tname + "'";
            object ob = Dm.GetSingleVaue(cmd);
            if (ob != null)
            {
                if (ob.ToString().Length > 0)
                {

                    srno = (int.Parse(ob.ToString()) + 1).ToString();
                    if (srno.Length == 1)
                    {
                        srno = "0" + srno;
                    }
                }
                else
                {
                    srno = "01";
                }
            }
            else
            {
               srno="01";
            }
            id = id + srno;
            cmd = "insert into Tbl_TraineeRegis values('" + id + "','" + srno + "','" + name + "','" + fname + "','" + gen + "','" + Filename + "','" + clg + "','" + cource + "','" + year + "','" + email + "','" + mob + "','" + tname + "','" + rfees + "','" + tfees + "','" + dt + "','" + promo + "','" + rem + "')";
            bool b = Dm.ExecuteInsertUpdateDelete(cmd);
            if (b == true)
                msg = "Trainee Tegistration Successfull";
            else
                msg = "Some Error Occured";
            ViewBag.res = msg;
            return View();
        }



        //Add College...............
        [HttpGet]
        public ActionResult College()
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("LogIn", "Public");
            }
            return View();
        }
        [HttpPost]
        public ActionResult College(string clg, string dist)
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("LogIn", "Public");
            }
            string msg="";
            string cmd = "insert into Tbl_AddCllg values('" + clg + "','" + dist + "')";
            bool b = Dm.ExecuteInsertUpdateDelete(cmd);
            if (b == true)
            {
                msg = "College Added Succesfully!";
            }
            ViewBag.res = msg;
            return View();
        }



        //Software Development Income......................
        [HttpGet]
        public ActionResult DevelopmentIncome()
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("LogIn", "Public");
            }
            return View();
        }
        [HttpPost]
        public ActionResult DevelopmentIncome(string name, string Cname, string stype, float tcost, float ramount,string rem)
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("LogIn", "Public");
            }
            string cmd = "insert into Tbl_Income values('"+name+"','"+Cname+"','"+stype+"','"+tcost+"','"+ramount+"','"+rem+"','"+DateTime.Now.ToString()+"')";
            bool b = Dm.ExecuteInsertUpdateDelete(cmd);
            if (b == true)
                ViewBag.msg = "Data Added Successfully";
            else
                ViewBag.msg = "Unable to Save";
            return View();
        }




        //Software Development Expense......................
        [HttpGet]
        public ActionResult DevelopmentExpence()
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("LogIn", "Public");
            }
            return View();
        }
        [HttpPost]
        public ActionResult DevelopmentExpence(string sname,string exp,float amt,string res)
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("LogIn", "Public");
            }
            string cmd = "insert into Tbl_Expence values('"+sname+"','"+exp+"','"+amt+"','"+res+"','"+DateTime.Now.ToString()+"')";
            bool b = Dm.ExecuteInsertUpdateDelete(cmd);
            if (b == true)
                ViewBag.msg = "Data Added Successfully";
            else
                ViewBag.msg = "Unable to Save";
            return View();
        }





        //Petty Expense & Income Details.............................
        [HttpGet]
        public ActionResult PettyEx()
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("LogIn", "Public");
            }
            return View();
        }
        [HttpPost]
        public ActionResult PettyEx(string sel, float amt,string rem)
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("LogIn", "Public");
            }
            string cmd = "insert into Tbl_Petty values('"+sel+"','"+amt+"','"+rem+"','"+DateTime.Now.ToString()+"')";
            bool b = Dm.ExecuteInsertUpdateDelete(cmd);
            if (b == true)
                ViewBag.msg = "Data Added Successfully";
            else
                ViewBag.msg = "Unable to Save";
            return View();
        }



        //Issue Certificate...........
        [HttpGet]
        public ActionResult IssueCirtificate()
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("LogIn", "Public");
            }
            return View();
        }
        [HttpPost]
        public ActionResult IssueCirtificate(string EnrollNo, string name, int tname, int clg, string fromdt, string todt, string duration, string grd, string rem)
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("LogIn", "Public");
            }
            string cmd = "insert into Tbl_Cirtificate values('"+EnrollNo+"','"+name+"','"+tname+"','"+clg+"','"+fromdt+"','"+todt+"','"+duration+"','"+grd+"','"+rem+"','"+DateTime.Now.ToString()+"')";
            bool b = Dm.ExecuteInsertUpdateDelete(cmd);
            if (b == true)
                ViewBag.msg = "Data Added Successfully";
            else
                ViewBag.msg = "Unable to Save";
            return View();
        }


        //Trainee Profile List.............................
        [HttpGet]
        public ActionResult TraineePro()
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("LogIn", "Public");
            }
            return View();
        }

        [HttpGet]
        public ActionResult ViewProfile(string tid)
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("LogIn", "Public");
            }
            string cmd = "select *from Tbl_TraineeRegis where RegNo='"+tid+"'";
            DataTable dt = Dm.ExecuteSelect(cmd);
            return View(dt);
        }


        //Submit Fees......................
        [HttpGet]
        public ActionResult SubmitFee()
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("LogIn", "Public");
            }
            return View();
        }
        [HttpPost]
        public ActionResult SubmitFee(string Enroll, string namme, int clg, int corc, float pamt, float damt, string rem)
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("LogIn", "Public");
            }
            string cmd = "insert into Tbl_Fees values('" + Enroll + "','" + namme + "','" + clg + "','" + corc + "','" + pamt + "','" + damt + "','" + rem + "','" + DateTime.Now.ToString() + "')";
            bool b = Dm.ExecuteInsertUpdateDelete(cmd);
            if (b == true)
            {
                
                cmd="select max(feeId) from Tbl_Fees";
                object ob=Dm.GetSingleVaue(cmd);
                return RedirectToAction("FeeReceipt", new {rid= ob.ToString()});
            }
            else
            {
                ViewBag.msg = "Unable to Save";
                return View();
            }
        }
        public ActionResult FeeReceipt(int rid)
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("LogIn", "Public");
            }
            string cmd = "select *from Tbl_Fees where feeId='" + rid + "'";
            DataTable dt = Dm.ExecuteSelect(cmd);
            return View(dt);
        }
        public ActionResult FeeReceiptEnroll(string rid)
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("LogIn", "Public");
            }
            string cmd = "select *from Tbl_Fees where EnrollNo='" + rid + "'";
            DataTable dt = Dm.ExecuteSelect(cmd);
            return View(dt);
        }
        [HttpGet]
        public ActionResult DupReciept()
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("LogIn", "Public");
            }
            return View();
        }
        [HttpPost]
        public ActionResult DupReciept(string s)
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("LogIn", "Public");
            }
            string cmd = "select feeId from Tbl_Fees where EnrollNo='" + s + "'";
            object ob = Dm.GetSingleVaue(cmd);
            return RedirectToAction("FeeReceipt", new { rid = ob.ToString() });
           
        }
        public ActionResult Logout()
        {

            Session.Clear();
            Session.Abandon();
            return View();
        }

    }
}
