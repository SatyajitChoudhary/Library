using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class signUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    
    }
    protected void registerButton_Click(object sender, EventArgs e)
    {

        String name = user_name.Text;
        if (duplicateUsername(name))
        {
            Label7.Visible = true;
        }
        else
        {
            Label7.Text = "Username available.";
            Label7.ForeColor = System.Drawing.Color.Green;
            Label7.Visible = true;
            String mail = user_mail.Text;
            if (duplicateUsermail(mail))
            {
                Label8.Visible = true;
            }
            else
            {

                String password = user_password.Text;
                if (password.Length < 6)
                {
                    Label6.Text = "Password must be atleast 6 letters long";
                    Label6.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    // create new entry in database
                    // and enter new id
                    //open sql Users to check password and username for login
                    String c = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
                    SqlConnection con = new SqlConnection(c);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into Users(username,email,password) values(@username,@email,@password)", con);
                    cmd.Parameters.AddWithValue("@username", name);
                    cmd.Parameters.AddWithValue("@email", mail);
                    cmd.Parameters.AddWithValue("@password", password);
                    int r = cmd.ExecuteNonQuery();
                    con.Close(); 
                    if (r == 1)
                    {
                        Response.Write("<script>alert('Welcome new user')</script>");
                        // create a database for this id to store its information
                        // IssuedBooks book name
                        // Date of Booking
                        // Last date of return
                        con.Open();
                        SqlCommand cmd1 = new SqlCommand("CREATE TABLE [dbo].[" + name + "]" +
                            "([Id] INT NOT NULL , [Book_name] VARCHAR(50) NOT NULL, [issueDate] DATE NOT NULL, "
                            + "[submitDate] DATE NOT NULL, "+
                            "PRIMARY KEY ([Id]),"
                            +"CONSTRAINT [FK_"+name+"_ToTable] FOREIGN KEY ([Book_name]) REFERENCES [Books]([B_name]))",con);
                        cmd1.ExecuteNonQuery();
                        con.Close();
                        Response.Redirect("loginPage.aspx");
                    }
                }
            }
        }
    }
    Boolean duplicateUsername(String name)
    {
        // check to see if already a username exsists
        String c = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        SqlConnection con = new SqlConnection(c);
        con.Open();
        SqlCommand cmd = new SqlCommand("select username from Users where username='" + name + "'", con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds, "Us");
        if (ds.Tables["Us"].Rows.Count != 0)
        {
            return true;
        }
        con.Close();
        return false;

    }
    Boolean duplicateUsermail(String mail)
    {
        // check to see if already a username exsists
        String c = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        SqlConnection con = new SqlConnection(c);
        con.Open();
        SqlCommand cmd = new SqlCommand("select email from Users where email='" + mail + "'", con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds, "Us");
        if (ds.Tables["Us"].Rows.Count != 0)
        {
            return true;
        }
        con.Close();
        return false;

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("<script>alert('Sorry this page is still under Development')</script>");
    }
}