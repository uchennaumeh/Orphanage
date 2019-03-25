using Microsoft.ApplicationBlocks.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;

namespace Orphanage
{
    public partial class MakeDonation : System.Web.UI.Page
    {
        private string Connstring = WebConfigurationManager.ConnectionStrings["connOrphanage"].ToString();
        private int RandomNumber(int min, int max)
        {
            Random rd = new Random();
            return rd.Next(min, max);
        }

        private string RandomString(int size, bool lowerCase)
        {
            StringBuilder builder = new StringBuilder();
            Random rd = new Random();
            char ch = '\0';
            for (int i = 0; i <= size - 1; i++)
            {
                ch = Convert.ToChar(Convert.ToInt32(Math.Floor(26 * rd.NextDouble() + 65)));
                builder.Append(ch);
            }
            if (lowerCase)
            {
                return builder.ToString().ToLower();
            }
            return builder.ToString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                txtDepartment.Text = Session["Department"].ToString().Trim();
                //txtDepartment.Text = Session ("Department");
                //txtBranch.Text = Session("Branch");
                txtUsername.Text = Session["User"].ToString().Trim();
                txtRole.Text = Session["RoleID"].ToString().Trim();


                StringBuilder builder = new StringBuilder();
                builder.Append(RandomNumber(100, 999));
                //builder.Append(RandomString(8, true));
                builder.Append(RandomString(7, false));
                string tranCode = "D" + builder.ToString();
                Session.Add("txnCode", tranCode);
                txtDonorCode.Text = tranCode + " " + "(TXN CODE)";

                Load_DonorType();
                Load_Beneficiary();
                Load_Category();
                Load_Branch();




            }


        }
        public void Load_Branch()
        {
            try
            {
                // Get Dataset
                // Dim params3() As SqlParameter = {New SqlParameter("@UserName", Session("User")), _
                // New SqlParameter("@Department", txtDepartment.Text)}

                DataSet ds = SqlHelper.ExecuteDataset(Connstring, CommandType.StoredProcedure, "[dbo].[orphanage_item_count_Fetch]");
                ListItem Li;
                Li = new ListItem();
                Li.Value = "0";
                Li.Text = "-- Select Item Count --";

                drpItemCount.AppendDataBoundItems = true;
                drpItemCount.Items.Add(Li);

                if (ds != null & ds.Tables[0].Rows.Count > 0)
                {
                    {
                        var withBlock = drpItemCount;
                        withBlock.DataSource = ds.Tables[0];
                        withBlock.DataTextField = "counter";
                        withBlock.DataValueField = "id";
                        withBlock.DataBind();
                        withBlock.SelectedIndex = 0;
                    }
                }
                ds.Dispose();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
        public void Load_DonorType()
        {
            try
            {
                // Get Dataset
                // Dim params3() As SqlParameter = {New SqlParameter("@UserName", Session("User")), _
                // New SqlParameter("@Department", txtDepartment.Text)}

                DataSet ds = SqlHelper.ExecuteDataset(Connstring, CommandType.StoredProcedure, "[dbo].[orphanage_DonorType_Fetch]");
                ListItem Li;
                Li = new ListItem();
                Li.Value = "0";
                Li.Text = "-- Select Donor Type --";

                drpDonorType.AppendDataBoundItems = true;
                drpDonorType.Items.Add(Li);

                if (ds != null & ds.Tables[0].Rows.Count > 0)
                {
                    {
                        var withBlock = drpDonorType;
                        withBlock.DataSource = ds.Tables[0];
                        withBlock.DataTextField = "Name";
                        withBlock.DataValueField = "id";
                        withBlock.DataBind();
                        withBlock.SelectedIndex = 0;
                    }
                }
                ds.Dispose();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
        public void Load_Beneficiary()
        {
            try
            {
                // Get Dataset
                // Dim params3() As SqlParameter = {New SqlParameter("@UserName", Session("User")), _
                // New SqlParameter("@Department", txtDepartment.Text)}

                DataSet ds = SqlHelper.ExecuteDataset(Connstring, CommandType.StoredProcedure, "[dbo].[orphanage_Beneficiary_Fetch]");
                ListItem Li;
                Li = new ListItem();
                Li.Value = "0";
                Li.Text = "-- Select Beneficiary Type --";

                drpBeneficiary.AppendDataBoundItems = true;
                drpBeneficiary.Items.Add(Li);

                if (ds != null & ds.Tables[0].Rows.Count > 0)
                {
                    {
                        var withBlock = drpBeneficiary;
                        withBlock.DataSource = ds.Tables[0];
                        withBlock.DataTextField = "Name";
                        withBlock.DataValueField = "id";
                        withBlock.DataBind();
                        withBlock.SelectedIndex = 0;
                    }
                }
                ds.Dispose();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        public void Load_Category()
        {
            try
            {
                // Get Dataset
                // Dim params3() As SqlParameter = {New SqlParameter("@UserName", Session("User")), _
                // New SqlParameter("@Department", txtDepartment.Text)}

                DataSet ds = SqlHelper.ExecuteDataset(Connstring, CommandType.StoredProcedure, "[dbo].[orphanage_ItemCategory]");
                ListItem Li;
                Li = new ListItem();
                Li.Value = "0";
                Li.Text = "-- Select Item Category --";

                drpItemCategory.AppendDataBoundItems = true;
                drpItemCategory.Items.Add(Li);

                if (ds != null & ds.Tables[0].Rows.Count > 0)
                {
                    {
                        var withBlock = drpItemCategory;
                        withBlock.DataSource = ds.Tables[0];
                        withBlock.DataTextField = "Name";
                        withBlock.DataValueField = "id";
                        withBlock.DataBind();
                        withBlock.SelectedIndex = 0;
                    }
                }
                ds.Dispose();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void drpItemCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                drpItemSubCat.ClearSelection();
                drpItemSubCat.Items.Clear();

                SqlParameter[] param = { new SqlParameter("@CategoryID", drpItemCategory.SelectedValue) };

                DataSet ds = SqlHelper.ExecuteDataset(Connstring, CommandType.StoredProcedure, "[dbo].[orphanage_cat_ItemSubCategory_Fetch]", param);

                ListItem Li;
                Li = new ListItem();
                Li.Value = "0";
                Li.Text = "-- Select Item Sub Category --";

                drpItemSubCat.AppendDataBoundItems = true;
                drpItemSubCat.Items.Add(Li);

                if (ds != null & ds.Tables[0].Rows.Count > 0)
                {
                    {
                        var withBlock = drpItemSubCat;
                        withBlock.DataSource = ds.Tables[0];
                        withBlock.DataTextField = "Name";
                        withBlock.DataValueField = "id";
                        withBlock.DataBind();
                        withBlock.SelectedIndex = 0;
                    }
                }
                ds.Dispose();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            };

        }

        protected void drpItemSubCat_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                drpItemType.ClearSelection();
                drpItemType.Items.Clear();

                SqlParameter[] param = { new SqlParameter("@subCategoryID", drpItemSubCat.SelectedValue) };

                DataSet ds = SqlHelper.ExecuteDataset(Connstring, CommandType.StoredProcedure, "[dbo].[orphanage_subcat_ItemType_Fetch]", param);

                ListItem Li;
                Li = new ListItem();
                Li.Value = "0";
                Li.Text = "-- Select Item Type --";

                drpItemType.AppendDataBoundItems = true;
                drpItemType.Items.Add(Li);

                if (ds != null & ds.Tables[0].Rows.Count > 0)
                {
                    {
                        var withBlock = drpItemType;
                        withBlock.DataSource = ds.Tables[0];
                        withBlock.DataTextField = "Name";
                        withBlock.DataValueField = "id";
                        withBlock.DataBind();
                        withBlock.SelectedIndex = 0;
                    }
                }
                ds.Dispose();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            };

        }

        protected void drpItemType_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                drpItemMake.ClearSelection();
                drpItemMake.Items.Clear();

                SqlParameter[] param = { new SqlParameter("@ItemTypeID", drpItemType.SelectedValue) };

                DataSet ds = SqlHelper.ExecuteDataset(Connstring, CommandType.StoredProcedure, "[dbo].[orphanage_ItemType_ItemMake_Fetch]", param);

                ListItem Li;
                Li = new ListItem();
                Li.Value = "0";
                Li.Text = "-- Select Item Make --";

                drpItemMake.AppendDataBoundItems = true;
                drpItemMake.Items.Add(Li);

                if (ds != null & ds.Tables[0].Rows.Count > 0)
                {
                    {
                        var withBlock = drpItemMake;
                        withBlock.DataSource = ds.Tables[0];
                        withBlock.DataTextField = "Name";
                        withBlock.DataValueField = "UoM";
                        withBlock.DataBind();
                        withBlock.SelectedIndex = 0;
                    }
                }
                ds.Dispose();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            };

        }

        protected void drpItemMake_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                drpItemUoM.ClearSelection();
                drpItemUoM.Items.Clear();

                

                SqlParameter[] param = { new SqlParameter("@ItemMakeID", drpItemMake.SelectedValue) };

                DataSet ds = SqlHelper.ExecuteDataset(Connstring, CommandType.StoredProcedure, "[dbo].[orphanage_ItemMake_ItemUoM_Fetch]", param);

                ListItem Li;
                Li = new ListItem();
                Li.Value = "0";
                Li.Text = "-- Select Measure --";

                drpItemUoM.AppendDataBoundItems = true;
                drpItemUoM.Items.Add(Li);

                if (ds != null & ds.Tables[0].Rows.Count > 0)
                {
                    {
                        var withBlock = drpItemUoM;
                        withBlock.DataSource = ds.Tables[0];
                        withBlock.DataTextField = "Name";
                        withBlock.DataValueField = "seqno";
                        withBlock.DataBind();
                        withBlock.SelectedIndex = 0;
                    }
                }
                ds.Dispose();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            };

        }

        protected void btnDonate_Click(object sender, EventArgs e)
        {
            Boolean fileOk = false;
            if ((fileUpload1.HasFile & fileUpload1.PostedFile.ContentLength > 60700))
            {
                Response.Write("<script language='javascript'>window.alert('Photo Size Should Not Be More Than 60KB');</script>");
            }
            else
            {
                string fileExtension = System.IO.Path.GetExtension(fileUpload1.FileName).ToLower();
                string[] allowedExtensions = { ".jpg", ".jpeg",".png" };

                for (int i = 0; i < allowedExtensions.Length ; i++)
                {
                    if (fileExtension == allowedExtensions[i])
                    {
                        fileOk = true;
                    }
                        
                }
            }

            if (fileOk)
            {
                try
                {

                    //if (check == "Fire_Protection")
                    //{

                        String path = Server.MapPath("~/ItemPhoto/");
                        fileUpload1.PostedFile.SaveAs(path + fileUpload1.FileName + Session["tranCode"]);
                        string photoSave = "~/ItemPhoto/" + fileUpload1.FileName + Session["tranCode"];
                        SqlParameter[] param = {new SqlParameter("@tranCode",Session["tranCode"]),
                        new SqlParameter("@user",Session["User"]),
                        new SqlParameter("@transactionType","Donation"),
                        new SqlParameter("@DonorType",drpDonorType.SelectedValue),
                        new SqlParameter("@Beneficiary",drpBeneficiary.SelectedValue),
                        new SqlParameter("@Category",drpItemCategory),
                        new SqlParameter("@SubCategory",drpItemSubCat.SelectedValue),
                        new SqlParameter("@ItemType",drpItemType.SelectedValue),
                        new SqlParameter("@ItemMake",drpItemMake.SelectedValue),
                        new SqlParameter("@ItemQty",drpItemCount.SelectedValue),
                        new SqlParameter("@Comment",txtComment.Text),
                        new SqlParameter("@photo",photoSave),
                        new SqlParameter("@ItemQty",drpItemCount.SelectedValue),
                        new SqlParameter("@UoM",drpItemUoM.SelectedValue)};
                        SqlHelper.ExecuteNonQuery(Connstring, CommandType.StoredProcedure, "dbo.Orphanage_Donation_trans", param);
                        lblError.Text = "Upload Successful";
                    //}
             

                }
                catch (Exception ex)
                {
                    //Response.Write("error:" + ex.Message);
                    lblError.Text = "File could not be uploaded.";
                }

            }
            else
            {
                lblError.Text = "Cannot accept files of this type.";
            }
        }


    
    }
}