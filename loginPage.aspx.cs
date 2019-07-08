using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["UserName"] != null && Request.Cookies["Password"] != null)
            {
                username.Text = Request.Cookies["UserName"].Value;
                password.Attributes["value"] = Request.Cookies["Password"].Value;
            }
        }
        if (!IsPostBack) //check if the webpage is loaded for the first time.
        {
            ViewState["PreviousPage"] =Request.UrlReferrer;
            //Saves the Previous page url in ViewState
        }
    }

    protected void loginButton_Click(object sender, EventArgs e)
    {
        String user_name = username.Text;
        String user_password = password.Text;
        if (rememberMe.Checked)
        {
            // save data for future
                Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(30);
                Response.Cookies["Password"].Expires = DateTime.Now.AddDays(30);
        }
        else
        {
                Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);

        }
        Response.Cookies["UserName"].Value = username.Text.Trim();
        Response.Cookies["Password"].Value = password.Text.Trim();

        //open sql Users to check password and username for login
        String c = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        SqlConnection con = new SqlConnection(c);
        con.Open();
        SqlCommand cmd=new SqlCommand("SELECT username,password From Users WHERE username='"+user_name+"' and password='"+user_password+"'",con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds,"us");
        // if found such an id open to redirect to last page came from 
        if (ds.Tables["us"].Rows.Count == 1)
        {
            // activate Session and change login button to logout button in master page
            Session["username"] = user_name;
            if (ViewState["PreviousPage"] != null)	//Check if the ViewState 
        //contains Previous page URL
        {
            Response.Redirect(ViewState["PreviousPage"].ToString());//Redirect to 
            //Previous page by retrieving the PreviousPage Url from ViewState.
        }   
        }
        else
        {
            errormsg.Visible = true;
        }
        con.Close();
      }

    protected void cancelButton_Click(object sender, EventArgs e)
    {
        if (ViewState["PreviousPage"] != null)	//Check if the ViewState 
        //contains Previous page URL
        {
            Response.Redirect(ViewState["PreviousPage"].ToString());//Redirect to 
            //Previous page by retrieving the PreviousPage Url from ViewState.
        }    
    }
    protected void newAccountLink_Click(object sender, EventArgs e)
    {
        Response.Redirect("signUp.aspx");
    }
    protected void forgotPasswordLink_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Currently this feature is unavailable')</script>");
    }
}