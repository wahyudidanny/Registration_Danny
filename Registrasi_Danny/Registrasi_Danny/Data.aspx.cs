using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Registrasi_Danny
{
    public partial class Data : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null) {

                lblName.Text = Session["user"].ToString();

                DataTable dt = new DataTable();
                dt.Clear();
                dt.Columns.Add("ID");
                dt.Columns.Add("Name");
                dt.Columns.Add("City");

                DataRow newrow = dt.NewRow();
                newrow["ID"] = "1";
                newrow["Name"] = "John Doe";
                newrow["City"] = "Jakarta";
                dt.Rows.Add(newrow);

                 newrow = dt.NewRow();
                newrow["ID"] = "2";
                newrow["Name"] = "Gina";
                newrow["City"] = "Palembang";
                dt.Rows.Add(newrow);

                 newrow = dt.NewRow();
                newrow["ID"] = "3";
                newrow["Name"] = "John";
                newrow["City"] = "Medan";
                dt.Rows.Add(newrow);

                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Remove("user");
            Response.Redirect("Login.aspx");
        }
    }
}