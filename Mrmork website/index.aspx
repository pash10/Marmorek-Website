<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="website.WebForm1" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>דף ראשי</title>
    <link href="mainPage.css" rel="stylesheet" />
</head>
<body dir="rtl">
    <div id="container">
        <div id="header">
           <div id="leftCol">
            <a href="login.aspx">כניסה</a>/<a href="singUp.aspx">רישום</a>
           </div>
           <div id="midCol">אתר אוהדי הפועל מרמורק</div>
           <div id="rightCol"> שלום אורח</div></div>
          <div id="nav"><table>
        <tr>
            <td>תפריט לאתר</td>
        </tr>
         <tr>
            <td>
                  <a href="index.aspx">העמוד הראשי</a>
                  <a href="WebForm2.aspx">עמוד לרשומים</a>
             </td>
        </tr>
    </table></div>
        <div id="content">כאן יופיע התוכן המרכזי</div>
         <div id="footer">תרפריט תחתון במידת הצורך</div>
      </div>
     
  
  
</body>
</html>
