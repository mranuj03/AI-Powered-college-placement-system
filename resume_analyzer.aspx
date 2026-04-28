<%@ Page Language="C#" %>

<!DOCTYPE html>

<html>
<head runat="server">

<title>AI Resume Analyzer</title>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<style>

body{
margin:0;
font-family:Arial;
background:url("img/campus.jpg") no-repeat center center fixed;
background-size:cover;
}

.overlay{
position:fixed;
top:0;
left:0;
width:100%;
height:100%;
background:rgba(0,0,0,0.5);
}

.wrapper{
display:flex;
justify-content:center;
align-items:center;
height:100vh;
position:relative;
}

.card{
width:500px;
background:white;
border-radius:12px;
box-shadow:0 15px 40px rgba(0,0,0,0.4);
padding:25px;
}

.title{
text-align:center;
font-size:24px;
color:#2563eb;
margin-bottom:20px;
}

button{
width:100%;
padding:12px;
background:#16a34a;
color:white;
border:none;
border-radius:6px;
font-size:16px;
cursor:pointer;
}

button:hover{
background:#15803d;
}

.result{
margin-top:20px;
background:#eef2ff;
padding:15px;
border-radius:8px;
}

.skill{
background:#2563eb;
color:white;
padding:4px 10px;
margin:3px;
display:inline-block;
border-radius:6px;
font-size:13px;
}

canvas{
margin-top:20px;
}

</style>

</head>

<body>

<div class="overlay"></div>

<div class="wrapper">

<div class="card">

<div class="title">AI Resume Analyzer</div>

<form runat="server">

<asp:FileUpload ID="FileUpload1" runat="server" />

<br><br>

<asp:Button ID="Button1" runat="server"
Text="Analyze Resume"
OnClick="AnalyzeResume" />

<br><br>

<asp:Label ID="lblResult" runat="server"></asp:Label>

</form>

<canvas id="chart" width="400" height="200"></canvas>

</div>

</div>

<script runat="server">

protected void AnalyzeResume(object sender, EventArgs e)
{

if(FileUpload1.HasFile)
{

string name = FileUpload1.FileName.ToLower();

int score = 40;

string skills = "";

string companies = "";

string improvement = "";


// skill detection

if(name.Contains("java"))
{
score+=10;
skills+="<span class='skill'>Java</span>";
}

if(name.Contains("python"))
{
score+=10;
skills+="<span class='skill'>Python</span>";
}

if(name.Contains("sql"))
{
score+=10;
skills+="<span class='skill'>SQL</span>";
}

if(name.Contains("html"))
{
score+=5;
skills+="<span class='skill'>HTML</span>";
}

if(name.Contains("project"))
{
score+=10;
}


// probability

int probability = score + 10;


// companies

if(score < 60)
{
companies="Small startups";
improvement="Add programming skills and projects.";
}

else if(score < 80)
{
companies="TCS, Infosys, Wipro";
improvement="Add internships and certifications.";
}

else
{
companies="Accenture, Capgemini, Deloitte";
improvement="Excellent resume.";
}


// result

lblResult.Text = "<div class='result'>" +

"<b>Resume Score:</b> "+score+"/100 <br><br>" +

"<b>Detected Skills:</b><br>"+skills+"<br><br>" +

"<b>Placement Probability:</b> "+probability+"%<br><br>" +

"<b>Eligible Companies:</b> "+companies+"<br><br>" +

"<b>Improvement:</b> "+improvement+

"</div>";

}

else
{

lblResult.Text="<div class='result'>Upload resume first.</div>";

}

}

</script>

<script>

    var ctx = document.getElementById('chart');

    new Chart(ctx, {

        type: 'bar',

        data: {

            labels: ['Skills', 'Projects', 'Communication', 'Problem Solving'],

            datasets: [{

                label: 'Placement Skills',

                data: [70, 60, 65, 75],

                backgroundColor: ['#2563eb', '#16a34a', '#f59e0b', '#ef4444']

            }]

        }

    });

</script>

</body>
</html>
