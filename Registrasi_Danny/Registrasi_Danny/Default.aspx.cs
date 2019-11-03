using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Runtime.Caching;
using System.Collections;
using System.Web.Caching;
using System.Threading;
using System.Data;


namespace Registrasi_Danny
{

    public partial class Default : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {

                try
                {
                    //if (Cache["Register"] != null)
                    //{

                    //    Cache.Add("Register", Cache["UserLogin"], null, DateTime.Now.AddDays(3), TimeSpan.Zero, System.Web.Caching.CacheItemPriority.Default, null);
                    //}

                }
                catch (Exception)
                {

                    throw;
                }

            }
        }


         public class Users
        {
            public String Username { get; set; }
            public String Password { get; set; }
        }


        protected void btnSave_Click(object sender, EventArgs e)
        {


            //kondisi pertama cache kosong
            if (Cache["Register"] == null)
            {


                //Users users1 = new Users();
                //users1.Username = txtUser.Text;
                //users1.Password = txtPass.Text;

                //Cache["Register"] = users1;
                //Response.Redirect("Login.aspx");

                //Isi Data
                DataTable dt = new DataTable();
                dt.Clear();
                dt.Columns.Add("Username");
                dt.Columns.Add("Password");

                DataRow newrow = dt.NewRow();
                newrow["Username"] = txtUser.Text;
                newrow["Password"] = txtPass.Text;
                dt.Rows.Add(newrow);

                DataSet set = new DataSet("Username");
                set.Tables.Add(dt.Copy());

                Cache["Register"] = set;
                Response.Redirect("Login.aspx?Cache=" + Cache["Register"] + "");
            }
            else
            {

                //jika cache sudah tersedia
                DataSet setdata = new DataSet("office");
                setdata = (DataSet)Cache["Register"];

                List<Datacs> DataPengguna = setdata.Tables[0].AsEnumerable()
                .Select(dataRow => new Datacs
                {
                    Username = dataRow.Field<string>("Username"),
                    Password = dataRow.Field<string>("Password")
                }).ToList();


                bool hasValue = DataPengguna.Any(cus => cus.Username == txtUser.Text);

                if (hasValue)
                {


                }
                else
                {

                    DataTable dt = new DataTable();
                    dt.Clear();
                    dt.Columns.Add("Username");
                    dt.Columns.Add("Password");

                    DataRow newrow = dt.NewRow();
                    newrow["Username"] = txtUser.Text;
                    newrow["Password"] = txtPass.Text;
                    dt.Rows.Add(newrow);

                    DataSet set = new DataSet("Username");
                    set.Tables.Add(dt.Copy());

                    Cache["Register"] = set;
                    Response.Redirect("Login.aspx");

                }
            }





        }

        protected void linkLogin_Click(object sender, EventArgs e)
        {
            rfvUsername.Enabled = false;
            rfvPassword.Enabled = false;
            compPass.Enabled = false;
            Response.Redirect("Login.aspx");
        }
    }
}