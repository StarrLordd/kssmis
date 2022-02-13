using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;


namespace MyProject.Controllers
{
    public class CaptchaCode
    {
        Random Rm = new Random();
        public string[] GetCaptchaImgAndCode()
        {
            Bitmap bm = new Bitmap(150, 45);
            Graphics g = Graphics.FromImage(bm);
            SolidBrush sb = new SolidBrush(Color.Maroon);
            FontFamily ff = new FontFamily("Arial");
            Font f = new Font(ff, 18, FontStyle.Strikeout);
            Rectangle r = new Rectangle(0, 0, 148, 43);
            g.Clear(Color.Silver);
            Pen p = new Pen(Color.Black);
            g.DrawRectangle(p, r);
            //Get Cpatcha
            string mycode = GetCpatchaCode();
            g.DrawString(mycode, f, sb, 15, 8);
            g.Flush();
            string Fname = Path.GetRandomFileName() + "am.jpg";
            string FolderPath = HttpContext.Current.Server.MapPath("/Content/CapImg/");
            string FullPath = FolderPath + Fname;
            bm.Save(FullPath, ImageFormat.Jpeg);
            string[] ImgAndCode = new string[2];
            ImgAndCode[0] = "/Content/CapImg/" + Fname;
            ImgAndCode[1] = mycode;
            return ImgAndCode;
        }
        private string GetCpatchaCode()
        {
            string code = "";
            char ch = (char)Rm.Next(65, 90);
            code = code + ch;
            ch = (char)Rm.Next(49, 57);
            code = code + ch;
            ch = (char)Rm.Next(70, 85);
            code = code + ch;
            ch = (char)Rm.Next(97, 122);
            code = code + ch;
            int num = Rm.Next(50, 57);
            //code=code+(num%2==0?(char)num:(char)Rm.Next(65,78));
            if (num % 2 == 0)
                code = code + (char)num;
            else
                code = code + (char)Rm.Next(65, 78);
            if (num % 2 != 0)
            {
                ch = (char)Rm.Next(100, 120);
                code = code + ch;
            }
            return code.Trim();
        }
    }
}