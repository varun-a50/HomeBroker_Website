using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Project1
{
    public partial class Homes_in_Mumbai : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["showhome"];
            if (dt != null)
            {
                Label7.Text = dt.Rows.Count.ToString();

            }
            else {
                Label7.Text = "0";
            
            }

        }
        protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "wishlist")
            {
                Response.Redirect("Wishlist.aspx?id=" + e.CommandArgument.ToString());
            }
        }
    }
}