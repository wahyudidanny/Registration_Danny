using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace Registrasi_Danny
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {

                try
                {

                    //if (Cache["UserLogin"] != null)
                    //{

                    //    Cache.Add("UserLogin", Cache["Register"], null, DateTime.Now.AddDays(3), TimeSpan.Zero, System.Web.Caching.CacheItemPriority.Default, null);
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


        protected void btnLogin_Click(object sender, EventArgs e)
        {

            try
            {
                if (txtUser.Text == "")
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Username Tidak Boleh Kosong');", true);
                }
                else if (txtPass.Text == "")
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Password Tidak Boleh Kosong');", true);
                }
                else
                {


                    //Users users1 = new Users();
                    //users1 = (Users)Cache["Register"];

                    Cache["UserLogin"] = Cache["Register"];
                    DataSet set = new DataSet("office");

                    //List<Datacs> DataPengguna = new List<Datacs>();
                    set = (DataSet)Cache["UserLogin"];


                    // List<Datacs> DataPengguna = new List<Datacs>();

                    List<Datacs> DataPengguna = set.Tables[0].AsEnumerable()
                        .Select(dataRow => new Datacs
                        {
                            Username = dataRow.Field<string>("Username"),
                            Password = dataRow.Field<string>("Password")
                        }).ToList();

                    bool hasValue = DataPengguna.Any(cus => cus.Username == txtUser.Text);

                    if (hasValue)
                    {
                        List<Datacs> data = new List<Datacs>();
                        DataPengguna.Find(x => x.Username == txtUser.Text);

                        //DataPengguna = DataPengguna.Any(cus => cus.Username == txtUser.Text);
                        // DataPengguna =

                        Session["user"] = txtUser.Text;
                        Response.Redirect("Data.aspx");
                    }
                    else
                    {


                    }

                    //if (DataPengguna.Contains(txtUser.Text.tostr)) {


                    //}

                    //if (txtUser.Text == "test" && txtPass.Text == "test")
                    //{

                    //    Session["user"]= txtUser.Text;
                    //    Response.Redirect("Data.aspx");
                    //}
                    //else {


                    //}
                }
            }
            catch (Exception)
            {

                throw;
            }

            
        }

        protected void linkRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}