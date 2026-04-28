<%@ Page Language="C#" %>

<!DOCTYPE html>

<html>
<head>

<title>Placement Analytics Dashboard</title>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<style>

body{
font-family:Arial;
margin:0;
background:#f3f4f6;
}

.header{
background:#1e293b;
color:white;
padding:15px;
font-size:22px;
text-align:center;
}

.dashboard{

display:grid;

grid-template-columns:repeat(2,1fr);

gap:25px;

padding:30px;

}

.card{

background:white;

padding:20px;

border-radius:10px;

box-shadow:0 5px 15px rgba(0,0,0,0.2);

}

h3{
margin-top:0;
}

canvas{
height:250px !important;
}

</style>

</head>

<body>

<div class="header">

Placement Analytics Dashboard

</div>

<div class="dashboard">

<div class="card">

<h3>Company Placements</h3>

<canvas id="barChart"></canvas>

</div>

<div class="card">

<h3>Company Share</h3>

<canvas id="pieChart"></canvas>

</div>

<div class="card">

<h3>Placement Growth</h3>

<canvas id="lineChart"></canvas>

</div>

<div class="card">

<h3>Salary Analytics</h3>

<canvas id="salaryChart"></canvas>

</div>

</div>

<script>

    // BAR CHART

    new Chart(document.getElementById("barChart"), {

        type: 'bar',

        data: {

            labels: ['TCS', 'Infosys', 'Wipro', 'Accenture', 'Capgemini'],

            datasets: [{

                label: 'Students Placed',

                data: [40, 25, 18, 15, 10],

                backgroundColor: ['#2563eb', '#16a34a', '#f59e0b', '#ef4444', '#8b5cf6']

            }]

        }

    });


    // PIE CHART

    new Chart(document.getElementById("pieChart"), {

        type: 'pie',

        data: {

            labels: ['TCS', 'Infosys', 'Wipro', 'Accenture', 'Capgemini'],

            datasets: [{

                data: [40, 25, 18, 15, 10],

                backgroundColor: ['#2563eb', '#16a34a', '#f59e0b', '#ef4444', '#8b5cf6']

            }]

        }

    });


    // LINE CHART

    new Chart(document.getElementById("lineChart"), {

        type: 'line',

        data: {

            labels: ['2021', '2022', '2023', '2024', '2025', '2026'],

            datasets: [{

                label: 'Students Placed',

                data: [50, 60, 70, 85, 95, 110],

                borderColor: '#2563eb',

                fill: false

            }]

        }

    });


    // SALARY CHART

    new Chart(document.getElementById("salaryChart"), {

        type: 'bar',

        data: {

            labels: ['TCS', 'Infosys', 'Wipro', 'Accenture', 'Capgemini'],

            datasets: [{

                label: 'Average Salary (LPA)',

                data: [3.5, 4, 3.2, 6, 5],

                backgroundColor: ['#2563eb', '#16a34a', '#f59e0b', '#ef4444', '#8b5cf6']

            }]

        }

    });

</script>

</body>
</html>
