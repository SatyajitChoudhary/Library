using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class BookDetail : System.Web.UI.Page
{
    String bookName;
    protected void Page_Load(object sender, EventArgs e)
    {
        // if the user is logged in
        // if the book is already issued 
        // ask for resissue
        //ask for return
        bookName = Session["bookName"].ToString(); ;

        if (Session["username"] != null)
        {
            String c = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
            SqlConnection con = new SqlConnection(c);
            con.Open();
            SqlCommand cmd = new SqlCommand("select Book_name from " + Session["username"].ToString() + " where Book_name='" + Session["bookName"].ToString() + "'", con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adp.Fill(ds, "us");
            if (ds.Tables["us"].Rows.Count == 1)
            {
                add2account.Visible = false;
                reissueButton.Visible = true;
                book_return.Visible = true;
            }

        }
        // collect book name and sent to detail page for
        // to retrive full data from database
           if(bookName!=null)
            {
               bookName=bookName.ToString();
               String c = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
               SqlConnection con = new SqlConnection(c);
               con.Open();
                SqlCommand cmd=new SqlCommand("select * from Books where B_name='"+bookName+"'",con);
                SqlDataReader data = cmd.ExecuteReader();
                if (data.Read())
                {
                    book_name.Text= data.GetString(0).ToString();
                    author_name.Text= data.GetString(1).ToString();
                    rating.Text = data.GetInt32(3).ToString();
                    book_image.ImageUrl = "~/"+data.GetString(4).ToString();
                    //~/Images/BookImage/sample1.jpg
                }
                con.Close();
            }

    }
    protected void add2account_Click(object sender, EventArgs e)
    {
        // if Logged in  then add to entry
        if (Session["username"] != null)
        {
            String c = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
            SqlConnection con = new SqlConnection();
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into " + Session["username"].ToString() + "(Book_name,issueDate,submitDate) values(@Id,@Book_name,@issueDate,@submitDate)",con);
            cmd.Parameters.AddWithValue("@Book_name", Session["bookName"].ToString());
            cmd.Parameters.AddWithValue("@issueDate", DateTime.Today);
            cmd.Parameters.AddWithValue("@submitDate", DateTime.Today.AddDays(30));
            cmd.ExecuteNonQuery();
            con.Close();
        }
        else
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
    protected void reissueButton_Click(object sender, EventArgs e)
    {
        String c = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        SqlConnection con = new SqlConnection(c);
        con.Open();
        String bookName = Session["bookName"].ToString();
        SqlCommand cmd = new SqlCommand("update " + Session["username"].ToString() + " set [issueDate]=@issueDate, [submitDate]=@submitDate where [Book_name]=@Book_name", con);
        cmd.Parameters.AddWithValue("@issueDate", DateTime.Today);
        cmd.Parameters.AddWithValue("@submitDate", DateTime.Today.AddDays(30));
        cmd.Parameters.AddWithValue("@Book_name", bookName);
        int r=cmd.ExecuteNonQuery();
        if(r==1)
            Response.Write("<script>alert('Book Re-Issued Succesfully')</script>");
        else
            Response.Write("<script>alert('Unable to Re-Issue Book ')</script>");

        con.Close();
    }
    protected void book_return_Click(object sender, EventArgs e)
    {
        String c = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        SqlConnection con = new SqlConnection(c);
        con.Open();
        SqlCommand cmd=new SqlCommand("delete from "+Session["username"].ToString()+" where Book_name='"+bookName+"'",con);
        int r=cmd.ExecuteNonQuery();
        con.Close();
        if (r == 1)
            Response.Write("<script>alert('Book Removed Succefully')</script>");
        else
            Response.Write("<script>alert('Unable to Remove Book')</script>");
    }
}