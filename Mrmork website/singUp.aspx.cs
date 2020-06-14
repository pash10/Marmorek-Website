using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace website
{
    public partial class WebForm3 : System.Web.UI.Page

    {
        string checkIfEmailExsiet;
        string errorMessage;

        protected void Page_Load(object sender, EventArgs e)
        {
         if (Request.Form["submit"] != null)
            {
                string fileName = "Database1.mdf";
                string tableName = "UserTable";

                string fName = Request.Form["fName"];
                string  lName = Request.Form["lName"];
                string password  = Request.Form["password"];
                string email = Request.Form["email"];



                checkIfEmailExsiet = "SELECT * FROM " + tableName + " WHERE email = '" + email + "'";

                if (Helper.IsExist(fileName, checkIfEmailExsiet))
                {
                    errorMessage = "שם המתמש " + " '" + email + "' " + "כבר קיים במערכת ";
                    message.Text = errorMessage;
                    message.Visible = true;
                }
                else
                {
                    string sqlInsert = "insert into UserTable(fName,lName,password,email)" + "values('" + fName + "', '" + lName + "' , '" + password + "'," + "'" + email + "')";
                    Helper.DoQuery(fileName, sqlInsert);
              
                    Response.Redirect("members.aspx");
                    Response.End();
                }
            }
        }     
    }
}