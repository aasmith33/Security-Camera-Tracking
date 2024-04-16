using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Security_Camera_Tracking
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetStatus();

        }

        public void GetStatus()
        {
            List<string> queryList = new List<string>(new string[]
            {
                "SELECT Camera_ID, Status FROM G3_Camera WHERE Status <> 'online'"
            });
            List<string> results = new List<string>();
            foreach (string query in queryList)
            {
                using (SqlConnection connection = new SqlConnection(SqlDataSource1.ConnectionString))
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                results.Add(reader.GetString(0));
                            }
                        }
                        else
                        {
                            results.Add(query + Environment.NewLine + "No rows found");
                        }
                    }
                }
            }

            foreach (string result in results)
            {
                lstCam.Visible = true;
                lstCam.Items.Add(result);
                redDot.Visible = true;
            }
        }

        protected void lstCam_SelectedIndexChanged(object sender, EventArgs e)
        {
            string camID = lstCam.SelectedItem.Text;
            Session["DisCamID"] = camID;
            Response.Redirect("~/frmOfflineCameras.aspx");
        }
    }
}