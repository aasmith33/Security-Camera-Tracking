using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Security_Camera_Tracking
{
    public partial class frmServer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (txtHostIP.Text != "")
            {
                SqlDataSource1.FilterExpression = "Host_IP LIKE '%" + txtHostIP.Text + "%'";
            }
            if (txtHostName.Text != "")
            {
                SqlDataSource1.FilterExpression = "Hostname LIKE '%" + txtHostName.Text + "%'";
            }
            if (txtLicense.Text != "")
            {
                SqlDataSource1.FilterExpression = "Assigned_Devices_Licneses LIKE '%" + txtHostIP.Text + "%'";
            }
            if (txtServer.Text != "")
            {
                SqlDataSource1.FilterExpression = "ServerID LIKE '%" + txtServer.Text + "%'";
            }
            else if ((txtHostIP.Text != "") && (txtHostName.Text != "") && (txtLicense.Text != "") && (txtServer.Text != ""))
            {
                SqlDataSource1.FilterExpression = null;
            }
        }
    }
}