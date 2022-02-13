using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyProject.Controllers
{
    public class MyCrypto
    {
        public string EncryptMyData(string PlainText)
        {
            string EncryptedText = "";
            foreach (char ch in PlainText)
            {
                int ASCIIValue = ch;
                if (ASCIIValue >= 97 && ASCIIValue <= 122)
                    ASCIIValue = ASCIIValue - 32;
                else if (ASCIIValue >= 65 && ASCIIValue <= 90)
                    ASCIIValue = 122 - ASCIIValue + 65;
                else if (ASCIIValue >= 48 && ASCIIValue <= 57)
                    ASCIIValue = 48 - ASCIIValue + 57;
                char newChar = (char)ASCIIValue;
                EncryptedText = EncryptedText + newChar;
            }
            return EncryptedText;
        }
    }
}