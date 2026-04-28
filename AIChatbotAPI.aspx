<%@ Page Language="C#" %>
<%@ Import Namespace="System.IO" %>

<%

string msg = Request.QueryString["msg"];

if(msg==null)
{
Response.Write("Ask something about placement.");
return;
}

msg = msg.ToLower();

string path = Server.MapPath("~/placement_qa.txt");



if(File.Exists(path))
{

string[] lines = File.ReadAllLines(path);

foreach(string line in lines)
{

string[] qa = line.Split('|');

if(qa.Length==2)
{

string q = qa[0].ToLower();
string a = qa[1];

if(msg.Contains(q))
{
Response.Write(a);
return;
}

}

}

}



if(msg.Contains("hello") || msg.Contains("hi"))
{
Response.Write("Hello! I am your AI Placement Assistant.");
return;
}

if(msg.Contains("placement"))
{
Response.Write("Placement preparation requires coding practice, aptitude and projects.");
return;
}

if(msg.Contains("interview"))
{
Response.Write("Prepare DSA, DBMS, OS and coding problems.");
return;
}

Response.Write("Sorry, I couldn't understand your question.");

%>