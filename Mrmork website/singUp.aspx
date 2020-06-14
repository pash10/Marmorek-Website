<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="singUp.aspx.cs" Inherits="website.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="mainPage.css" rel="stylesheet" />
    <script src="singUp.js"></script>
</head>
<body dir="rtl">
           
               <div id="container">
        <div id="header">
           <div id="leftCol">
               <a href="index.aspx">לדף הראשי</a>
               </div>
          <div id="midCol">אתר אוהדי הפועל מרמורק</div>
           <div id="rightCol"> <asp:Label ID ="message" runat="server" Text=""> </asp:Label></div></div>
        <div id="content">
            
            <form id="singUp" runat="server" onsubmit="return CheckSignUpForm(singUp)" method="post">
       <div>
         <h1 id="myHeader">טופס הרשמה</h1>
         <table>


             <tr>
                 <td>שם פרטי:</td>
                 <td><input type="text" id="fName" name="fName" /></td>
                 <td><input type="text" id="mFName"/></td>
             </tr>
              <tr>
                 <td>שם משפחה:</td>
                 <td><input type="text" id="lName" name="lName" /></td>
                 <td><input type="text" id="mLName"/></td>
             </tr>
             
             <tr>
                 <td>סיסמא:</td>
                 <td><input id="passwordBox" type="password" name="password" /></td>
                 <td><input id="mPassword" type="text" /></td>
                 </tr>
             <tr>
                 <td>דוא"ל:</td>
                 <td><input id="emailInput" type="email" name="email" /></td>
                 <td><input id="emailJS" type="text" /></td>
             </tr>
             <tr>
              <td><input id="sendButton" name="submit" type="submit" value="לסיום ההרשמה" /></td>
               <td><input type="reset" value="לנסות מחדש"/></td>                      
             </tr>
            
         </table>
           </div>
            
        
    </form>    
</div>
        <div id="footer">תרפריט תחתון במידת הצורך</div>

 
      </div>
</body>
</html>
                                                                                                                       
