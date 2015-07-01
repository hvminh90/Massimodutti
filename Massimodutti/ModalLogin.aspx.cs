using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Massimodutti
{
    public partial class ModalLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void send_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}