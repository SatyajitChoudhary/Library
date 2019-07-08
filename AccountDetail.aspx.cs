using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AccountDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            String c = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
            SqlConnection con = new SqlConnection(c);
            con.Open();
            SqlCommand cmd= new SqlCommand("select * from Users where username='"+Session["username"].ToString()+"'",con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                username.Text = dr[0].ToString();
                password.Text=dr[2].ToString();
                email.Text=dr[1].ToString();
                SqlCommand cmd1 = new SqlCommand("select Id from " + Session["username"].ToString(), con);
                int r=cmd1.ExecuteNonQuery();
                if (r != 0)
                    check_in.Visible = true;
                booksIssued.Text = r.ToString();
            }
            con.Close();
        }
    }
    protected void check_in_Click(object sender, EventArgs e)
    {
        if (Session["username"] != null & booksIssued.Text!="0")
        {
            Response.Redirect("BooksIssued.aspx");
        }
    }
}