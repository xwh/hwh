using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Addproposal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string username =Convert.ToString(Session["username"]);
        TextBox3.Text = username;
         
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        DataClassesDataContext da = new DataClassesDataContext();

       
        var result1 = from n in da.user
                     where n.user_name == TextBox3.Text
                     select n.major;
        var result2 = from m in da.project
                      where m.project_num == DropDownList1.Text
                      select m.major;
        foreach (var n in result1)
        {
            foreach (var m in result2)
            {
                if (n != m)
                {
                    ClientScriptManager client = this.ClientScript;
                    client.RegisterStartupScript(this.GetType(), "55", "<script>alert('专业不符！');history.back()</script>");
                    return;
                }
            }
        }
        proposal p = new proposal();
        p.proposal1 = TextBox1.Text;
        p.project_num = DropDownList1.Text;
        p.teacher_name = DropDownList2.Text;
        p.user_name = TextBox3.Text;
        p.proposal_num = TextBox2.Text;
        da.proposal.InsertOnSubmit(p);
        da.SubmitChanges();
        GridView1.DataBind();

    }

    //private void Binder()
    //{
    //    DataClassesDataContext da = new DataClassesDataContext();
    //    var user = from p in da.proposal
    //               select p;
    //    GridView1.DataSource = user;
    //    GridView1.DataBind();
    //}


        protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Student.aspx");
    }
}
