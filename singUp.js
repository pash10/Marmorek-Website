
function CheckSignUpForm(singUp) {
    var check = true;

    if (!CheckFirstName()) {
        check = false;
    }

    if (!CheckFNameLetters()) {
        check = false;

    }

    if (!CheckLastName()) {
        check = false;
    }

    if (!CheckLNameLetters()) {
        check = false;
    }

    if (!CheckPassword()) {
        check = false;
    }

    if (!CheckEmail()) {
        check = false;
    }


    return check;
}

function CheckFirstName() {
    var checkFirstName = true;
    let fName = document.getElementById("fName").value;
    if (fName.length < 2) {
        document.getElementById("mFName").value = "שם פרטי קצר מדי או לא קיים"
        checkFirstName = false;
    }
    return checkFirstName;
}

function CheckFNameLetters() {
    let checkFNameLetters = true;
    if (CheckFirstName() == true) {
        let validFName = /^[א-תa-zA-Z]+$/;
        let testFName = validFName.test(document.getElementById("fName").value);
        if (!testFName) {
            document.getElementById("mFName").value = "הקלד עם אותיות בלבד";
            checkFNameLetters = false;
        }
    }
    return checkFNameLetters;
}

function CheckLastName() {
    var checkLastName = true;
    let lName = document.getElementById("lName").value;
    if (lName < 2) {
        document.getElementById("mLName").value = "שם משפחה קצר מדי או לא קיים";
        checkLastName = false;
    }
    return checkLastName;
}

function CheckLNameLetters() {
    let checkLNameLetters = true;
    if (CheckLastName() == true) {
        let validLName = /^[א-תa-zA-Z]+$/;
        let testLName = validLName.test(document.getElementById("lName").value);
        if (!testLName) {
            document.getElementById("mLName").value = "הקלד עם אותיות בלבד";
            checkLNameLetters = false;
        }
    }
    return checkLNameLetters;
}

function CheckPassword() {
    let checkPassword = true;
    var password = document.getElementById("passwordBox").value;
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
    let email = document.getElementById("emailInput").value;
    if (email == "") {
        document.getElementById("emailJS").value = "הכנס אימייל";
        CheckEmail = false;
    }
    else {
        if (!Valid.test(email)) {
            document.getElementById("emailJS").value = "הכנס אימייל חוקי";
            CheckEmail = false;
        }
    }
    return CheckEmail;
}







