using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Security_Camera_Tracking
{
    public partial class frmMap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex == 1)
            {
                Response.Redirect("~/Maps/CentralCampus.aspx");
            }
            if (DropDownList1.SelectedIndex == 2)
            {
                Response.Redirect("~/Maps/CherokeeCampus.aspx");
            }
            if (DropDownList1.SelectedIndex == 3)
            {
                Response.Redirect("~/Maps/TygerRiverCampus.aspx");
            }
            if (DropDownList1.SelectedIndex == 4)
            {
                Response.Redirect("~/Maps/EvansCampus.aspx");
            }
            if (DropDownList1.SelectedIndex == 5)
            {
                Response.Redirect("~/Maps/UnionCampus.aspx");
            }

        }
    }
}