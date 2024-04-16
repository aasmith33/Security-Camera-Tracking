using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Security_Camera_Tracking
{
    public partial class frmSearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (txtSN.Text != "")
            {

                SqlDataSource1.FilterExpression = "serial_number LIKE '%" + txtSN.Text + "%'";

            }
            if (txtCamName.Text != "")
            {

                SqlDataSource1.FilterExpression = "Name LIKE '%" + txtCamName.Text + "%'";

            }
            if (txtIpAddress.Text != "")
            {

                SqlDataSource1.FilterExpression = "IP_Address LIKE '%" + txtIpAddress.Text + "%'";

            }
            if (txtMake.Text != "")
            {

                SqlDataSource1.FilterExpression = "Make LIKE '%" + txtMake.Text + "%'";

            }
            if (txtModel.Text != "")
            {

                SqlDataSource1.FilterExpression = "Model LIKE '%" + txtModel.Text + "%'";

            }
            if (txtSrvr.Text != "")
            {

                SqlDataSource1.FilterExpression = "Server_ID LIKE '%" + txtSrvr.Text + "%'";

            }
            else if ((txtSN.Text == "") && (txtCamName.Text == "") && (txtIpAddress.Text == "") && (txtMake.Text == "") &&
                (txtModel.Text == "") && (txtSrvr.Text == ""))
            {
                SqlDataSource1.FilterExpression = null;
            }

        }
    }
}