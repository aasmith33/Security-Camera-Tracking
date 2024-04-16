using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Security_Camera_Tracking
{
    public partial class frmOfflineCameras : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = (string)Session["DisCamID"];
            if (name != null)
            {
                SqlDataSource1.FilterExpression = "Camera_ID LIKE '%" + name + "%'";

            }
        }
    }
}