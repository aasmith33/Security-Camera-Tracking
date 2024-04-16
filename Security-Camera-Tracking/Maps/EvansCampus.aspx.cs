using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Security_Camera_Tracking.Maps
{
    public partial class EvansCampus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageMap1_Click(object sender, ImageMapEventArgs e)
        {
            if (e.PostBackValue != null)
            {
                string camID = e.PostBackValue.ToString();
                Session["camID"] = camID;
            }

            Response.Redirect("~/frmDetails.aspx");
        }
    }
}