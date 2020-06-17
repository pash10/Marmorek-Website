<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="members.aspx.cs" Inherits="website.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>רכישת כרטיסים</title>
 <link href="mainPage.css" rel="stylesheet" />
    <script src="saveTicket.js"></script>
</head>
<body dir="rtl">
    <div id="container">
        <div id="header">
           <div id="leftCol">
             <a href="index.aspx">לדף הראשי</a>
           </div>
           <div id="midCol">אתר אוהדי הפועל מרמורק</div>
           <div id="rightCol"> שלום משתמש רשום</div></div>
        <div id="content">
            <form id="singIn"  onsubmit="return CheckSignInForm(singIn)" method="post" >     
            <table>
                <tr>
                    <td><h1> כניסה לאתר:</h1></td>

                </tr>
                <tr>
                    
                    <td>כמות הכרטיסים לשמירה:</td>
                    <td> <input type="text" id="lSave" name="Save"/></td>
                    <td><input type="text" id="mSave"  disabled="disabled" /></td>
                </tr>
                <tr>
                 <td><input id="sendButton" name="submit" type="submit" value="לשמירה" /></td>
                    <td>  <input type="reset" value="לנסות מחדש"/></td>
                </tr>
            </table>
         </form>
        </div>
        <div id="red"><img src="https://upload.wikimedia.org/wikipedia/he/thumb/e/ea/Hapoel_Marmurek_Haim_Logo.png/200px-Hapoel_Marmurek_Haim_Logo.png" /></div>

      </div>
</body>

    
</html>


