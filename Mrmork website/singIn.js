


function CheckSignInForm(singIn) {
    var check = true;


    if (!CheckPassword()) {
        check = false;
    }

    if (!CheckEmail()) {
        check = false;
    }

    return check;
}

function CheckPassword() {
    let checkPassword = true;
    var password = document.getElementById("lPassword").value;
    if (password == "") {
        document.getElementById("mPassword").value = "הקלד סיסמה";
        checkPassword = false;
    }
    else {
        if (password.length >= 1 && password <= 5) {
            document.getElementById("mPassword").value = "הסיסמא קצרה מדי";

            checkPassword = false;
        }
    }
    return checkPassword;
}

function CheckEmail() {

    var CheckEmail = true;
    var Valid = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    let email = document.getElementById("lEmail").value;
    if (email == "") {
        document.getElementById("mEmail").value = "הכנס אימייל";
        CheckEmail = false;
    }
    else {
        if (!Valid.test(email)) {
            document.getElementById("mEmail").value = "הכנס אימייל חוקי";
            CheckEmail = false;
        }
    }
    return CheckEmail;
}