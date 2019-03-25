using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using Microsoft.ApplicationBlocks.Data;
using System.Configuration;
using System.Text;

namespace Orphanage
{

    public partial class UserLogin : System.Web.UI.Page
    {
        //private string Connstring = ConfigurationManager.ConnectionStrings("connPrisons").ConnectionString;
        private string Connstring = WebConfigurationManager.ConnectionStrings["connOrphanage"].ToString();
        string check;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                check = Request.QueryString[0].ToString().Trim();
                Session.Add("Pager", check);

            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            check = Request.QueryString[0].ToString().Trim();
            //try
            //{
            SqlParameter[] param = { new SqlParameter("@UserName", txtUsername.Text.Trim()),
            new SqlParameter("@IPAddress", Request.ServerVariables["REMOTE_ADDR"]),
            new SqlParameter("@Password", txtPassword.Text)};


                SqlDataReader fre = SqlHelper.ExecuteReader(Connstring, CommandType.StoredProcedure, "Orphanage_USer_Login", param);
                if (fre.HasRows)
                {
                    Session.Clear();
                    Session.Add("User", txtUsername.Text.Trim());
                    Session.Add("UserOk", true);
                   
                    while (fre.Read())
                    {
                        Session.Add("RoleID", fre.GetInt32(2));
                        Session.Add("Department", fre.GetInt32(4));
                        //Session.Add("Department", fre.GetInt32(4));
                  
                    }
                    fre.Close();
                btnLogin.Visible = false;

                    if (check == "tester")
                {
                    
                    //string url = "tester.aspx";
                    //string url2 = "Notester.aspx";

                    //StringBuilder sb = new StringBuilder();

                    //sb.Append("<script type = 'text/javascript'>");

                    //sb.Append("window.open('");

                    //sb.Append(url);

                    //sb.Append("');");

                    //sb.Append("</script>");

                    //ClientScript.RegisterStartupScript(this.GetType(),

                    //        "script", sb.ToString());
                    Response.Write("<script type = 'text/javascript'>window.open('MakeDonation.aspx','_blank');</script>");
                    //Response.Redirect("tester.aspx");
                    }
                   
                    else
                    {


                    //string url = "tester.aspx";
                    //string url2 = "Notester.aspx";

                    //StringBuilder sb = new StringBuilder();

                    //sb.Append("<script type = 'text/javascript'>");

                    //sb.Append("window.open('");

                    //sb.Append(url);

                    //sb.Append("');");

                    //sb.Append("</script>");

                    //ClientScript.RegisterStartupScript(this.GetType(),

                    //        "script", sb.ToString());
                    Response.Write("<script>window.open ('MakeDonation.aspx','_blank');</script>");
                    //Response.Redirect("Notester.aspx");
                    }




            }
                else
                {
                    lblError.Text = "Access is Denied";
                }

            //}
            //catch
            //{
            //    lblError.Text = "An Error Occured While Trying To Verify Please Try Again Later";
            //}
            //    Dim params() As SqlParameter = {New SqlParameter("@UserName", Trim(txtUsername.Text)), _
            //                            New SqlParameter("@IPAddress", Request.ServerVariables("REMOTE_ADDR")), _
            //                           New SqlParameter("@Password", Trim(txtPassword.Text))}


            //'Try

            //Dim retValue As Data.DataRow = SqlHelper.ExecuteDataset(Connstring, CommandType.StoredProcedure, "Loan_Login", params).Tables(0).Rows(0)


            //    If retValue Is Nothing Then
            //        lblError.Text = "Access is Denied"
            //    Else
            //        Session("AdminOk") = True
            //        Session("Role") = retValue.Table.Rows(0).Item("Role")
            //        Session("User") = retValue.Table.Rows(0).Item("UserName")
            //        'Session("staffID") = retValue.Table.Rows(0).Item("staffID")
            //        'Session("department") = retValue.Table.Rows(0).Item("Department")
            //        Response.Redirect("userDefault.aspx")
            //    End If

            //'Catch ex As Exception
            //lblError.Text = "Access is Denied"
            //'LoanError.WriteLog(ex.Message, ex.StackTrace)
            //'End Try

            //'lblmsg.Text = "APRRAISAL HAS BEEN OPEN!!!"












        }
    }
}