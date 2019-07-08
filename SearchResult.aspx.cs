using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class SearchResult : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["authorName"] != null || Session["bookName"] != null)
        {
            if (!IsPostBack)
            {
                fillDataList();
            }
        }
        else
        {
            Label7.Visible = true;
        }

    }
    public void fillDataList()
    {
        String c = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        SqlConnection con = new SqlConnection(c);
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT B_name,B_author,B_rating,B_image FROM Books WHERE(([B_author] LIKE '%' + @B_author + '%') OR (([B_name] LIKE '%'+@B_name+'%')))", con);
        cmd.Parameters.AddWithValue("@B_author", Session["authorName"].ToString());
        cmd.Parameters.AddWithValue("@B_name", Session["bookName"].ToString());
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();
        con.Close();

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "BookDetail")
        {
            Session["bookName"] = e.CommandArgument;
            Response.Redirect("BookDetail.aspx");
        }
    }
}