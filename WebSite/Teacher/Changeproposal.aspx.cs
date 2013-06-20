using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher_Changeproposal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();
            Binder();
           
        }
      
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataClassesDataContext da = new DataClassesDataContext();
        var rusult = from s in da.proposal
                     where s.proposal_num == DropDownList1.Text
                     select s;
        foreach (proposal s in rusult)
        {
          
            s.proposal_num = DropDownList1.Text;
            s.proposal1 = TextBox1.Text;

        }
        da.SubmitChanges();
        Binder();
        TextBox1.Text = "";

    }

    private void Binder()
    {
        DataClassesDataContext da = new DataClassesDataContext();
        var user = from p in da.proposal
                   select p;
        GridView1.DataSource = user;
        GridView1.DataBind();
    }

    private void Bind()
    {
        DataClassesDataContext da = new DataClassesDataContext();
        var user = from p in da.proposal    
                   select p.user_name;
        GridView1.DataSource = user;
        GridView1.DataBind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Teacher.aspx");
    }
}