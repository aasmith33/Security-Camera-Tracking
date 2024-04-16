using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Security_Camera_Tracking
{
    public partial class frmDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetCamID();
        }

        public void GetCamID()
        {
            string name = (string)Session["camID"];
            SqlDataSource3.SelectCommand = "SELECT * FROM [G3_Camera] WHERE ([Camera_ID] LIKE '%" + name + "%')";
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/frmMap.aspx");
        }
    }
}