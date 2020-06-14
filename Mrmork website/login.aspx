<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="website.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>כניסה</title>
    <link href="mainPage.css" rel="stylesheet" />
    <script src="singIn.js"></script>
</head>
        
       
           <body dir="rtl">
               <div id="container">
        <div id="header">
           <div id="leftCol">
          <a href="index.aspx">לדף הראשי</a>
           </div>
           <div id="midCol">אתר אוהדי הפועל מרמורק</div>
           <div id="rightCol"> <asp:Label ID ="message" runat="server"  Text=""> </asp:Label></div></div>
        <div id="content">    
       <form id="singIn" runat="server" onsubmit="return CheckSignInForm(singIn)" method="post" >     
            <table>
                <tr>
                    <td><h1> כניסה לאתר:</h1></td>

                </tr>
                <tr>
                    <td>דוא"ל:</td>
                    <td><input type="text"  id="lEmail" name="email"/></td>
                    <td><input type="text" id="mEmail" style="display:none;" disabled="disabled" /></td>
                </tr>
                <tr>
                    <td>סיסמא:</td>
                    <td> <input type="password" id="lPassword" name="password"/></td>
                    <td><input type="text" id="mPassword" style="display:none;" disabled="disabled" /></td>
                </tr>
                <tr>
                 <td><input id="sendButton" name="submit" type="submit" value="לסיום ההרשמה" /></td>
                    <td>  <input type="reset" value="לנסות מחדש"/></td>
                </tr>
            </table>
    </form></div>
                    <div id="footer">תרפריט תחתון במידת הצורך</div>
     
      </div>

  
        
</body>
</html>
