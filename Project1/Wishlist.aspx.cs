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
    public partial class Wishlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("id");
                dt.Columns.Add("image");
                dt.Columns.Add("place");
                dt.Columns.Add("address");
                dt.Columns.Add("price");

                if (Request.QueryString["id"] != null)
                {
                    if (Session["showhome"] == null)
                    {
                        dr = dt.NewRow();
                        String strcon = "Data Source = LAPTOP-9TJ6P2OV\\SQLEXPRESS; Initial Catalog = homebroker; Integrated Security = True";
                        SqlConnection con = new SqlConnection(strcon);
                        String myquery = "select * from Home_Details where id=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = con;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["id"] = ds.Tables[0].Rows[0]["id"].ToString();
                        dr["image"] = ds.Tables[0].Rows[0]["image"].ToString();
                        dr["place"] = ds.Tables[0].Rows[0]["place"].ToString();
                        dr["address"] = ds.Tables[0].Rows[0]["address"].ToString();
                        dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["showhome"] = dt;
                        Response.Redirect("Wishlist.aspx");

                    }
                    else
                    {
                        dt = (DataTable)Session["showhome"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        String strcon = "Data Source = LAPTOP-9TJ6P2OV\\SQLEXPRESS; Initial Catalog = homebroker; Integrated Security = True";
                        SqlConnection con = new SqlConnection(strcon);
                        String myquery = "select * from Home_Details where id=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = con;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["id"] = ds.Tables[0].Rows[0]["id"].ToString();
                        dr["image"] = ds.Tables[0].Rows[0]["image"].ToString();
                        dr["place"] = ds.Tables[0].Rows[0]["place"].ToString();
                        dr["address"] = ds.Tables[0].Rows[0]["address"].ToString();
                        dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();


                        Session["showhome"] = dt;
                        Response.Redirect("Wishlist.aspx");

                    }

                }
                else
                {
                    dt = (DataTable)Session["showhome"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();


                }
                
            }
            Label2.Text = GridView1.Rows.Count.ToString();

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["showhome"];
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sri;
                String qdata;
                String dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sri = Convert.ToInt32(qdata);

                if (sr == sri)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    break;
                }
            }
            for (int i = 1; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();

            }
            Session["showhome"] = dt;
            Response.Redirect("Wishlist.aspx");

        }
    }
}