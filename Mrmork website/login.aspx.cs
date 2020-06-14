using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace website
{
    public partial class WebForm2 : System.Web.UI.Page
    {
       
         public string CheckIfUserExist;
        public string CheckIfPasswordExist;
        public string erorMessege;
        public bool CheckUser = false;
        public bool CheckPassword = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string fileName = "Database.mdf";
                string tableName = "userTable";

                string email = Request.Form["email"];
                string passwordBox = Request.Form["password"];
                CheckIfUserExist = "SELECT * FROM " + tableName + " WHERE email = '" + email + "'";
                CheckIfPasswordExist = "SELECT * FROM " + tableName + " WHERE password = '" + passwordBox + "'";

                if (Helper.IsExist(fileName, CheckIfUserExist))
                {
                    CheckUser = true;
                }

                if (CheckUser == false)
                {
                    erorMessege = "שם המשתמש לא קיים במערכת";
                    message.Text = erorMessege;
                    message.Visible = true;
                }

                if (Helper.IsExist(fileName, CheckIfPasswordExist))
                {
                    CheckPassword = true;
                }
                if (CheckPassword == false)
                {
                    erorMessege = "הסיסמא לא קיימת במערכת";
                    message.Text = erorMessege;
                    message.Visible = true;
                }
                if (CheckUser == true && CheckPassword == true)
                {
                    if (Helper.IsExist(fileName, CheckIfUserExist))
                    {
                        Response.Redirect("members.aspx");
                        Response.End();
                    }
                    else
                    {
                        erorMessege = "שם המשתמש לא מתואם עם הסיסמא";
                    }

                }
            }
        }
    }
}


   