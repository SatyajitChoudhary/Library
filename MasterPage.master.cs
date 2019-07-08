using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (logoutButton.Visible == true)
        {
            AccountDetail.Text = Session["username"].ToString();
            AccountDetail.Visible = true;
        }
        if (Session["username"] != null)
        {
            loginButton.Visible = false;
            logoutButton.Visible = true;
        }
    }
    protected void loginButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("loginPage.aspx");
    }
    protected void signUpButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("signUp.aspx");
    }
    protected void searchBox_TextChanged(object sender, EventArgs e)
    {
        String search = Server.HtmlEncode(searchBox.Text);
            Response.Write("<script>alert('this works')</script>");
            Session["authorName"] = search;
            Session["bookName"] = search;
            Response.Redirect("SearchResult.aspx");
    }
   
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void logoutButton_Click(object sender, EventArgs e)
    {
        Session["username"] = null;
        loginButton.Visible = true;
        logoutButton.Visible = false;
    }

    protected void AccountDetail_Click(object sender, EventArgs e)
    {
        Response.Redirect("AccountDetail.aspx");
    }
}
