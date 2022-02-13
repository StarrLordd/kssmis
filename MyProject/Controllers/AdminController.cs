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
    public class AdminController : Controller
    {
        //
        // GET: /Admin/
        CaptchaCode cc = new CaptchaCode();
        DBManager dm = new DBManager();
        static string[] MyCaptchaImgAndCode = new string[2];
        private bool isValidUser()
        {
            if (Session["adminin"] != null)
            {
                string uid = Session["adminin"].ToString();
                string[] ar = dm.getNameAndPhoto(uid);
                ViewBag.name = ar[0];
                ViewBag.pic = ar[1];
                return true;
            }
            else
            {
                return false;
            }
        }
        [HttpGet]
        public ActionResult AdminLogin()
        {
            return View();
        }
        [HttpPost]
        public ActionResult AdminLogin(string adId, string adPass)
        {
            
            MyCrypto Mc = new MyCrypto();
            adPass = Mc.EncryptMyData(adPass);
            string Command = "select *from Tbl_Login where UserId='" + adId + "' and pass='" + adPass + "' and Utype='ADMIN'";
            object ob = dm.GetSingleVaue(Command);
            if (ob != null)
            {
                Session["adminin"] = adId;
                return RedirectToAction("AdminHome", "Admin");
            }
            else
            {
                ViewBag.res = "Invalid UserName or Password";
                return View();
            }
        }
        public ActionResult TraineeRec()
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("/", "Public");
            }
            return View();
        }
        public ActionResult FeeDetails()
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("/", "Public");
            }
            return View();
        }
        public ActionResult PettyIncomeEx()
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("/", "Public");
            }
            return View();
        }
        public ActionResult CertiRec()
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("/", "Public");
            }
            return View();
        }
        [HttpGet]
        public ActionResult AddManeger()
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("/","Public");
            }
            MyCaptchaImgAndCode = cc.GetCaptchaImgAndCode();
            ViewBag.Msg = MyCaptchaImgAndCode[0];
            return View();
        }
        //Generate New Captcha By Using Ajax
        public ActionResult GetNewCaptcha()
        {
            MyCaptchaImgAndCode = cc.GetCaptchaImgAndCode();
            var imgPath = MyCaptchaImgAndCode[0];
            return Json(imgPath, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public ActionResult AddManeger(string EmpId, string name, string gen, string email, string mobno, string texta, string pass, string capt)
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("/", "Public");
            }
            HttpPostedFileBase fb = Request.Files["pic"];
            string Filename = Path.GetRandomFileName() + fb.FileName;
            fb.SaveAs(Server.MapPath("/Content/UserPics/" + Filename));
            string Command = "", msg = "";
            bool status;
            if (MyCaptchaImgAndCode[1].Trim().Equals(capt.Trim())) 
            {
                string rdt = DateTime.Now.ToString();
                Command = "insert into Tbl_AddManager values('"+EmpId+"','"+name+"','"+gen+"','"+email+"','"+mobno+"','"+texta+"','"+Filename+"','"+rdt+"')";
                status = dm.ExecuteInsertUpdateDelete(Command);
                if (status == true)
                {
                    MyCrypto Cr = new MyCrypto();
                    string cpass = Cr.EncryptMyData(pass);
                    Command = "insert into Tbl_Login values('"+EmpId+"','"+cpass+"','MANAGER')";
                    status = dm.ExecuteInsertUpdateDelete(Command);
                    if (status == true)
                    {
                        msg="Manager is Successfully Added. Id is "+EmpId+" and Password is "+pass+". ";
                        string smsmsg="Hi Mr/Ms. "+name+". You are Successfully Added as a Maneger in KSS. YOur Login Id  "+EmpId+" and Password "+pass+". KSS recommands you That Don't share your Id and Password to anyone.    Thank you Team KSS";
                        SmsSender ss = new SmsSender();
                        ss.SendSMS(mobno, smsmsg);
                    }
                    else
                    {
                        msg = "Login Details are failed to Register";
                    }

                }
                else
                {
                    msg="Some Technical Problems are on Going";
                }
            }
            else
            {
                msg="Capthca Code Not Match.";
            }
            ViewBag.reg = msg;
            return View();
        }
        public ActionResult AdminHome()
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("/", "Public");
            }
            return View();
        }
        [HttpGet]
        public ActionResult TrainingMgmt()
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("/", "Public");
            }
            return View();
        }
        [HttpPost]
        public ActionResult TrainingMgmt(string name, int yr, float tfees, float rfees)
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("/", "Public");
            }
            string msg = "";
            string cmd = "insert into Tbl_AddTraining values('"+name+"','"+yr+"','"+tfees+"','"+rfees+"','"+DateTime.Now.ToString()+"')";
            bool b = dm.ExecuteInsertUpdateDelete(cmd);
            if (b == true)
                msg = "Training Add Successfully!";
            ViewBag.res = msg;
            return View();
        }
        [HttpGet]
        public ActionResult SendSMS()
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("/", "Public");
            }
            return View();
        }
        [HttpPost]
        public ActionResult SendSMS(string num,string msg)
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("/", "Public");
            }
            SmsSender ss = new SmsSender();
            string sms="";
            bool b=ss.SendSMS(num, msg);
            if (b == true)
            {
                sms = "Message Sent SuccessFully";
            }
            else
            {
                sms = "Some Error Occured";
            }
            ViewBag.msg = sms;
            return View();
        }
        public ActionResult EnqManegment()
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("/", "Public");
            }
            return View();
        }
        public ActionResult ManegMan()
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("/", "Public");
            }
            return View();
        }
        [HttpGet]
        public ActionResult NotiManegment()
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("/", "Public");
            }
            return View();
        }
        [HttpPost]
        public ActionResult NotiManegment(string noti)
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("/", "Public");
            }
            string cmd = "insert into Tbl_Notification values('" + noti + "','" + DateTime.Now.ToString() + "')";
            bool b = dm.ExecuteInsertUpdateDelete(cmd);
            if (b == true)
                ViewBag.msg = "Notification Added SuccessFully";
            return View();
        }
        [HttpGet]
        public ActionResult DeleteNoti(string nid)
        {
            string cmd = "delete from Tbl_Notification where NotiId='" + nid + "'";
            bool b = dm.ExecuteInsertUpdateDelete(cmd);
            if (b == true)
                TempData["msg"] = "Notification Delete Successfully";
            else
                TempData["msg"] = "Unable to Delete";
            return RedirectToAction("NotiManegment", "Admin");
        }
        [HttpGet]
        public ActionResult DeleteReg(string uid)
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("/", "Public");
            }
            string cmd = "delete from Tbl_AddManager where EmpId='" + uid + "'";
            bool b = dm.ExecuteInsertUpdateDelete(cmd);
            if (b == true)
            {
                TempData["msg"] = "Delete Record Successfully";
            }
            else
            {
                TempData["msg"] = "Unable to Delete";
            }
            return RedirectToAction("ManegMan","Admin");
        }
        [HttpGet]
        public ActionResult ChangePassword()
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("/", "Public");
            }

            return View();
        }
        [HttpPost]
        public ActionResult ChangePassword(string pass, string npass,string cpass)
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("/", "Public");
            }
            string msg = "";
            //Change Password
            if (npass.Equals(cpass))
            {
                string epass, enewpass, command, uid;
                MyCrypto Mc = new MyCrypto();
                epass = Mc.EncryptMyData(pass);
                enewpass = Mc.EncryptMyData(npass);
                uid = Session["adminin"].ToString();
                command = "Update Tbl_Login set pass='" + enewpass + "' where userid='" + uid + "' and pass='" + epass + "' ";
                bool b = dm.ExecuteInsertUpdateDelete(command);
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
        [HttpGet]
        public ActionResult SearchTrainee()
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("/", "Public");
            }
            return View();
        }
        [HttpPost]
        public ActionResult SearchTrainee( string Ename)
        {
            if (isValidUser() == false)
            {
                return RedirectToAction("/", "Public");
            }
            string cmd = "select *from Tbl_TraineeRegis where RegNo like '%" + Ename + "%' or Name like '%" + Ename + "%'";
            DataTable dt = dm.ExecuteSelect(cmd);
            return View(dt);
        }
        [HttpGet]
        public ActionResult Logout()
        {
            Session.Abandon();
            Session.Clear();
            return View();
        }
        public ActionResult searchEnroll(string Ename)
        {
           
           
            return View();
        }

    }
}
