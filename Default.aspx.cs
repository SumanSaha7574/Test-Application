using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Test_Application
{
    public partial class _Default : Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["connString"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void submit_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                string sql = "sp_student_insert";
                SqlParameter[] par = new SqlParameter[3];
                par[0] = new SqlParameter("@name", txtname.Text);
                par[1] = new SqlParameter("@cell", txtmob.Text);
                par[2] = new SqlParameter("@email", txtemail.Text);
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.CommandType = CommandType.StoredProcedure;
                foreach (SqlParameter a in par)
                {
                    cmd.Parameters.Add(a);
                }
                string UserId = Convert.ToString(cmd.ExecuteNonQuery());
                if (UserId.Length > 0)
                {
                    lblerror.Text = "Data inserted successfully...!";
                    txtemail.Text = string.Empty;
                    txtmob.Text = string.Empty;
                    txtname.Text = string.Empty;
                }
                else
                {
                }
            }
            catch (Exception ex)
            {
                lblerror.Text = ex.Message;
            }
            finally
            {
                con.Close();
            }
        }
    }

}

