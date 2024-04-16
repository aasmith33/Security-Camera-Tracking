using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Security_Camera_Tracking
{
    public partial class frmReportMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCamDetails_Click(object sender, EventArgs e)
        {
            if(lstCameras.SelectedItem.Text != null)
            {
                string camID = lstCameras.SelectedItem.Text;
                Session["cameraID"] = camID;
            }
            Response.Redirect("~/Reports/IndividualCamera.aspx");
        }

        protected void btnTotalIP_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Reports/TotalIpCams.aspx");
        }

        protected void btnDownCams_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Reports/TotalDownCams.aspx");
        }

        protected void btnTotalLicenses_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Reports/TotalLicenses.aspx");
        }

        protected void btnLicenseUsed_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Reports/TotalLicensesAvail.aspx");
        }

        protected void btnByDate_Click(object sender, EventArgs e)
        {
            if (lstInstallDate.SelectedItem.Text != null)
            {
                string camID = lstInstallDate.SelectedItem.Text;
                Session["cameraID"] = camID;
            }
            Response.Redirect("~/Reports/CamsByDate.aspx");
        }

        protected void btnByDate0_Click(object sender, EventArgs e)
        {
            if (lstServers.SelectedItem.Text != null)
            {
                string serverID = lstServers.SelectedItem.Text;
                Session["serverID"] = serverID;
            }
            Response.Redirect("~/Reports/ServerReport.aspx");
        }

        protected void btnCamsByCampus_Click(object sender, EventArgs e)
        {
            if (lstCampus.SelectedItem.Text == "Tyger River Campus")
            {
                Response.Redirect("~/Reports/TrReport.aspx");
            }
            if (lstCampus.SelectedItem.Text == "Evans Campus")
            {
                Response.Redirect("~/Reports/EvansReport.aspx");
            }
            if (lstCampus.SelectedItem.Text == "Giles Central Campus")
            {
                Response.Redirect("~/Reports/GilesReport.aspx");
            }
            if (lstCampus.SelectedItem.Text == "Union Campus")
            {
                Response.Redirect("~/Reports/UnionReport.aspx");
            }
            if (lstCampus.SelectedItem.Text == "Cherokee Campus")
            {
                Response.Redirect("~/Reports/CherokeeReport.aspx");
            }
        }
    }
}