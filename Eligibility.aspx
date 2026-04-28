<%@ Page Language="C#" %>

<!DOCTYPE html>

<html>
<head>

<title>Placement Eligibility Checker</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<style>

body{
background-image:url('img/college.jpg');
background-size:cover;
background-position:center;
background-repeat:no-repeat;
height:100vh;
display:flex;
justify-content:center;
align-items:center;
font-family:Arial;
position:relative;
}

body::before{
content:"";
position:absolute;
top:0;
left:0;
width:100%;
height:100%;
background:rgba(0,0,0,0.5);
z-index:0;
}

.card{
width:450px;
border:none;
border-radius:15px;
background:rgba(255,255,255,0.95);
box-shadow:0 10px 25px rgba(0,0,0,0.4);
position:relative;
z-index:1;
}

.card-header{
background:#2563eb;
color:white;
font-size:22px;
text-align:center;
border-radius:15px 15px 0 0;
}

.resultBox{
margin-top:15px;
}

canvas{
margin-top:20px;
}

</style>

</head>

<body>

<form runat="server">

<div class="card">

<div class="card-header">
Placement Eligibility Checker
</div>

<div class="card-body">

<label>CGPA</label>
<asp:TextBox ID="cgpa" runat="server" CssClass="form-control"></asp:TextBox>

<br>

<label>Backlogs</label>
<asp:TextBox ID="backlog" runat="server" CssClass="form-control"></asp:TextBox>

<br>

<label>Skills (java python sql)</label>
<asp:TextBox ID="skills" runat="server" CssClass="form-control"></asp:TextBox>

<br>

<label>Projects</label>
<asp:TextBox ID="projects" runat="server" CssClass="form-control"></asp:TextBox>

<br>

<label>Internship (yes/no)</label>
<asp:TextBox ID="internship" runat="server" CssClass="form-control"></asp:TextBox>

<br>

<div class="d-grid">

<asp:Button ID="Button1"
runat="server"
Text="Check Placement"
CssClass="btn btn-success"
OnClick="checkEligibility"/>

</div>

<div class="resultBox">

<asp:Label ID="result" runat="server"></asp:Label>

</div>

<canvas id="chart"></canvas>

</div>

</div>

</form>

</body>
</html>

<script runat="server">

protected void checkEligibility(object sender,EventArgs e)
{

double c;
int b;
int p;

/* safe parsing */

bool cgpaValid = double.TryParse(cgpa.Text, out c);
bool backlogValid = int.TryParse(backlog.Text, out b);
bool projectValid = int.TryParse(projects.Text, out p);

string s = skills.Text.ToLower();
string i = internship.Text.ToLower();

/* validation */

if(!cgpaValid || !backlogValid)
{

result.Text = "<div class='alert alert-danger'>Please enter valid CGPA and Backlogs.</div>";

return;

}

/* score */

int score = 0;

if(c >= 8)
score += 40;

else if(c >= 7)
score += 30;

else
score += 10;

/* skills */

if(s.Contains("java"))
score += 10;

if(s.Contains("python"))
score += 10;

if(s.Contains("sql"))
score += 10;

/* projects */

if(p >= 2)
score += 10;

/* internship */

if(i == "yes")
score += 10;

/* probability */

int probability = score;

/* companies */

string companies="";

if(score >= 80)
companies="Accenture, Capgemini, Deloitte";

else if(score >= 60)
companies="TCS, Infosys, Wipro";

else
companies="Startups";

/* result */

result.Text = "<b>Placement Probability:</b> "+probability+"%<br><br>" +

"<b>Recommended Companies:</b><br>"+companies+"<br><br>" +

"<div class='progress'>" +

"<div class='progress-bar bg-success' style='width:"+probability+"%'>"+probability+"%</div>" +

"</div>";

/* store probability for graph */

Session["prob"] = probability;

/* auto clear */

cgpa.Text="";
backlog.Text="";
skills.Text="";
projects.Text="";
internship.Text="";

}

</script>

<script>

    var prob = '<%= Session["prob"] %>';

    if (prob) {

        new Chart(document.getElementById("chart"), {

            type: 'bar',

            data: {

                labels: ['Placement Probability'],

                datasets: [{

                    label: 'Probability %',

                    data: [prob],

                    backgroundColor: '#16a34a'

                }]

            },

            options: {
                scales: {
                    y: {
                        beginAtZero: true,
                        max: 100
                    }
                }
            }

        });

    }

</script>
