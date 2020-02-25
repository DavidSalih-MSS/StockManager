using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StockManager
{
    public partial class AddRemoveStock : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            lbItem.Visible = true;
            tbItem.Visible = true;
            BtnCreate.Visible = true;
            lblItemGroupGet.Visible = true;
            ddGroupName.Visible = true;

            BtnUpdate.Visible = false;
            btnAdd.Visible = false;
 


        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            BtnUpdate.Visible = false;
            btnAdd.Visible = false;



        }

        protected void BtnCreate_Click(object sender, EventArgs e)
        {
            StockPortalDataContext sp = new StockPortalDataContext();
            string ItemName = tbItem.Text.ToString();
            int id = Int32.Parse(ddGroupName.SelectedValue.ToString());
            var dt = sp.usp_Insert_Items(ItemName, id);

            ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage",
           "alert('" + "Item Added" + "'); window.location='" +
            Request.ApplicationPath + "/AddRemoveStock.aspx';", true);
        }

        protected void btnget_Click(object sender, EventArgs e)
        {



            txtQuantity.Text = "";
            ddStaff.DataBind();
            ddAddOrRemove.DataBind();

            pnldetails.Visible = true;
            StockPortalDataContext sp = new StockPortalDataContext();
            int id = Int32.Parse(ddItem.SelectedValue.ToString());
            var dt = sp.usp_ItemDetails_Get(id).FirstOrDefault();

            txtItem.Text = dt.Item.ToString();
            txtItemGroup.Text = dt.ItemGroup.ToString();
            txtQuantity.Text = dt.Quantity.ToString();



            //test

        }

        protected void btnUpdateItems_Click(object sender, EventArgs e)
        {
 
            StockPortalDataContext sp = new StockPortalDataContext();

            int itemId = Int32.Parse(ddItem.SelectedValue.ToString());
            int staffId = Int32.Parse(ddStaff.SelectedValue.ToString());
            int quantity  = Int32.Parse(txtQuantityChange.Text.ToString());
            int actionId = Int32.Parse(ddAddOrRemove.SelectedValue.ToString());
            string actionNotes = txtNotes.Text.ToString();

            var dt = sp.usp_Update_Stock(itemId, staffId, quantity, actionId, actionNotes);

            ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage",
                "alert('" + "Item Updated" + "'); window.location='" +
                Request.ApplicationPath + "/AddRemoveStock.aspx';", true);

        }
    }
}