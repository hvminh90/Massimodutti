using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Massimodutti
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void rptProduct_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            
            if (e.CommandName == "cmd_Add_to_cart")
            {
                Int32 id = Convert.ToInt32(e.CommandArgument);
                Label lbl = (Label) e.Item.FindControl("lbl");
                lbl.Text = id.ToString();
               


            }
        }
    }
}