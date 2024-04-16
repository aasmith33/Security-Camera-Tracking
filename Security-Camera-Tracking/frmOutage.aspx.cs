using System;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI.WebControls;
// Abigail Smith 
// Group 3 Capstone 2022
namespace Security_Camera_Tracking
{
    public partial class frmOutage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void ReportOutage()
        {
            SqlConnection con = new SqlConnection(SqlDataSource1.ConnectionString);
            SqlCommand cmd = new SqlCommand("G3_Insert_Images", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@query", txtCom.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Camera_ID", lstCamera.SelectedItem.ToString());
            FileUpload file = fileUpload;
            string fileName;
            string filePath;
            string getPath;
            string pathToStore;
            try
            {
                if (file.HasFile)
                {
                    fileName = file.FileName;
                    filePath = Server.MapPath("~\\Attachments\\" + System.Guid.NewGuid() + fileName);
                    file.SaveAs(filePath);
                    int getPos = filePath.LastIndexOf("\\");
                    int len = filePath.Length;
                    getPath = filePath.Substring(getPos, len - getPos);
                    pathToStore = getPath.Remove(0, 1);
                    cmd.Parameters.AddWithValue("@Attachments", pathToStore);
                }
                con.Open();
                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                string msg = ex.Message;
                Response.Write("<script>alert('" + msg + "')</script>");
            }
            finally
            {
                con.Close();
                cmd.Dispose();
            }
        }

        public void CreateEmail()
        {
            try
            {
                Image img = new Image();
                FileUpload file = fileUpload;
                string fileName = file.FileName;
                string filePath = Server.MapPath("~\\Attachments\\" + System.Guid.NewGuid() + fileName);
                img.ImageUrl = filePath;
                string to = "Group3Capstone@outlook.com"; //To address    
                string from = "Group3Capstone@outlook.com"; //From address    
                MailMessage msg = new MailMessage(from, to);
                if (fileUpload.HasFile)
                {
                    HttpFileCollection fc = Request.Files;
                    for (int i = 0; i <= fc.Count - 1; i++)
                    {
                        HttpPostedFile pf = fc[i];
                        Attachment attach = new Attachment(pf.InputStream, pf.FileName);
                        msg.Attachments.Add(attach);
                    }
                }
                msg.Subject = "Camera Outage Reported!";
                msg.Body = "Email address of user reporting the outage: " + txtEmail.Text +
                    "\n" + "Camera: " + lstCamera.SelectedItem.ToString() + "\n" +
                    "Description of outage: " + txtCom.Text + "\n" +
                    "If the user uploaded any images, they will be attached to this email.";

                //Configure an SmtpClient to send the mail.
                SmtpClient client = new SmtpClient("smtp.office365.com", 587);
                client.EnableSsl = true; //only enable this if your provider requires it
                                         //Setup credentials to login to our sender email address ("UserName", "Password")
                NetworkCredential credentials = new NetworkCredential("Group3Capstone@outlook.com", "Capstone@Project");
                client.Credentials = credentials;

                //Send the msg
                client.Send(msg);

                lblMsg.Text = "Your Message was sent to the helpdesk! We will get back to you shortly. ";
                lblMsg.Visible = true;
            }
            catch
            {
                //If the message failed at some point, let the user know
                lblMsg.Text = "Your message failed to send, please try again.";
            }
            lblMsg.Visible = true;
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            ReportOutage();
            CreateEmail();
        }
    }
}