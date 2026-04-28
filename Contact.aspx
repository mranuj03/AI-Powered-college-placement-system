<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">
    <meta charset="utf-8">
    <title>Contact</title>

    <link href="assets/fontawesome/css/all.css" rel="stylesheet" />
    <link href="index/css/style.css" rel="stylesheet">
</head>

<body>

    <form runat="server">

        <!-- NAVBAR -->
        <div class="container-fluid">
            <div class="row border-top px-xl-5">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">

                        <div class="navbar-nav py-0">
                            <a href="~/index.html" runat="server" class="nav-item nav-link">Home</a>
                            <a href="~/login_student.aspx" runat="server" class="nav-item nav-link">Student Login</a>
                            <a href="~/login_placement.aspx" runat="server" class="nav-item nav-link">Placement</a>
                            <a href="~/about.html" runat="server" class="nav-item nav-link">About</a>
                            <a href="~/Contact.aspx" runat="server" class="nav-item nav-link active">Contact</a>
                        </div>

                    </nav>
                </div>
            </div>
        </div>

        <!-- HEADER -->
        <div class="container-fluid page-header" style="margin-bottom: 90px;">
            <div class="container text-center">
                <h3 class="display-4 text-white text-uppercase">Contact</h3>
            </div>
        </div>

        <!-- CONTACT FORM -->
        <div class="container py-5">
            <div class="text-center mb-5">
                <h5 class="text-primary text-uppercase mb-3">Contact</h5>
                <h1>Contact For Any Query</h1>
            </div>

            <div class="row justify-content-center">
                <div class="col-lg-8">

                    <div class="bg-secondary rounded p-5">

                        <asp:Label ID="msg" runat="server"></asp:Label>

                        <asp:TextBox ID="name" CssClass="form-control mb-3" placeholder="Your Name" runat="server"></asp:TextBox>

                        <asp:TextBox ID="email" CssClass="form-control mb-3" placeholder="Your Email" runat="server"></asp:TextBox>

                        <asp:TextBox ID="subject" CssClass="form-control mb-3" placeholder="Subject" runat="server"></asp:TextBox>

                        <asp:TextBox ID="message" TextMode="MultiLine" Rows="4" CssClass="form-control mb-3" placeholder="Message" runat="server"></asp:TextBox>

                        <asp:Button ID="sendBtn" runat="server" Text="Send Message" CssClass="btn btn-primary w-100" OnClick="SendMessage" />

                    </div>

                </div>
            </div>
        </div>

        <!-- NEWSLETTER -->
        <div class="container-fluid bg-dark text-white py-5 px-5">
            <div class="row">

                <!-- LEFT -->
                <div class="col-lg-7 mb-4">
                    <h5 class="text-primary text-uppercase mb-4">Get In Touch</h5>
                    <p><i class="fa fa-map-marker-alt mr-2"></i> Noida</p>
                    <p><i class="fa fa-envelope mr-2"></i> Aman@gmail.com</p>
                    <p><i class="fa fa-phone mr-2"></i> +91 7255811710</p>
                </div>

                <!-- RIGHT -->
                <div class="col-lg-5">
                    <h5 class="text-primary text-uppercase mb-4">Newsletter</h5>

                    <p>
                        Get the latest updates on campus placements, top hiring companies, salary trends, and interview tips.
                    </p>

                    <div class="input-group">
                        <input type="text" class="form-control border-light" placeholder="Your Email Address">
                        <div class="input-group-append">
                            <button class="btn btn-primary">Sign Up</button>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </form>

    <script runat="server">

        protected void SendMessage(object sender, EventArgs e)
        {
            if (name.Text == "" || email.Text == "" || subject.Text == "" || message.Text == "") {
                msg.Text = "<div class='alert alert-danger'>All fields are required</div>";
            }
            else {
               
                try {
                    System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();

                    mail.To.Add("amanyadav18353@gmail.com");
                    mail.From = new System.Net.Mail.MailAddress("amanyadav18353@gmail.com");

                    mail.Subject = "New Contact Query";

                    mail.Body = "Name: " + name.Text + "\n" +
                        "Email: " + email.Text + "\n" +
                        "Subject: " + subject.Text + "\n" +
                        "Message: " + message.Text;

                    System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient("smtp.gmail.com", 587);

                    smtp.Credentials = new System.Net.NetworkCredential("amanyadav18353@gmail.com", "kxvc aiey fner linj");

                    smtp.EnableSsl = true;

                    smtp.Send(mail);
                }
                catch (Exception ex)
                {
                    msg.Text = "Email Error: " + ex.Message;
                }

                msg.Text = "<div class='alert alert-success'>Message Sent Successfully!</div>";

                name.Text = "";
                email.Text = "";
                subject.Text = "";
                message.Text = "";
            }
        }

    </script>

</body>
</html>