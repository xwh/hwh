using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write( Session["username"]);
    }

   

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Addproposal.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }
}