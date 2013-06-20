using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher_Addproject : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Binder();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataClassesDataContext da = new DataClassesDataContext();
        project p = new project();
        p.project_num = TextBox1.Text;
        p.title = TextBox2.Text;
        p.type = TextBox3.Text;
        p.major = TextBox4.Text;
        p.detail = TextBox5.Text;
        da.project.InsertOnSubmit(p);
        da.SubmitChanges();
        Binder();

    }

    private void Binder()
    {
        DataClassesDataContext da = new DataClassesDataContext();
        var user = from p in da.project
                   select p;
        GridView1.DataSource = user;
        GridView1.DataBind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Teacher.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}