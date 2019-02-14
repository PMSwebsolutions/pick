using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using Dapper;
using DapperExtensions;
using DapperExtensions.Sql;
using Npgsql;
using sunriseBLL.DAPPER;

namespace sunrise
{
    public partial class loginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrorMessage.Visible = false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (var cn = new NpgsqlConnection(ConfigurationManager.AppSettings["dbconnection"]))
            {
                cn.Open();

                try
                {
                    var query = "select password from login_table where username=@userS;";
                    var result = cn.Query<loginDapper>(query, new { userS = txtUserName.Text.Trim() }).Single<loginDapper>();
                    var d = result.password;
                    if (d.ToString() == txtPassword.Text.Trim())
                    {
                        Session["username"] = txtUserName.Text.Trim();
                        Response.Redirect("admin/homeAdmin.aspx");
                    }
                    else
                    {
                        lblErrorMessage.Visible = true;
                    }
                }
                catch
                {
                    lblErrorMessage.Visible = true;
                }

            }
        }
    }
}


