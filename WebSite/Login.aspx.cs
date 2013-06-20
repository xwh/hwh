using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{

    DataClassesDataContext bdc = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {

        string uid = txtuid.Text.Trim().ToString();
        string pwd = txtpwd.Text.Trim().ToString();
        if (uid != " " && pwd != " ")
        {   
            
            var result1 = from n in bdc.admin
                         where n.admin_name == uid && n.password == pwd
                         select n;
            var result2 = from n in bdc.user
                          where n.user_name == uid && n.password == pwd
                          select n;
            var result3 = from n in bdc.teacher
                          where n.teacher_name == uid && n.password == pwd
                          select n;
            foreach(var n in result1)
            {
            if (n.admin_name != null )
            {
                Session["username"] = uid;
                Response.Redirect("Maneger.aspx", true);
                return;
            }
            }
            foreach(var n in result2)
            {
            if (n.user_name != null )
            {
                Session["username"] = uid;
                Response.Redirect("Student.aspx", true);
                return;
            }
            }
            foreach(var n in result3)
            {
            if (n.teacher_name != null )
            {
                Session["username"] = uid;
                Response.Redirect("Teacher/Teacher.aspx", true);
                return;
            }
            }
            ClientScriptManager client = this.ClientScript;
            client.RegisterStartupScript(this.GetType(), "55", "<script>alert('用户名或密码错误，请重新输入！');history.back()</script>");
            return;
            }
        }
    }
