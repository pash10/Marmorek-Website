


function CheckSignInForm(singIn) {
    var check = true;


    if (!CheckTickets()) {
        check = false;
    }

    if (!CheckTicketsNumbers()) {
        check = false;
    }

    if (check == true) {
        alert("תודה רבה הכריטים נשמרו בשבילך");
    }

    return check;
}

function CheckTickets() {
    let checkTickets = true;
    var tickets = document.getElementById("lSave").value;
    if (tickets == "") {
        document.getElementById("mSave").value = "הקלד כמות כרטיסים";
        checkTickets = false;
    }


    return checkTickets;
}


function CheckTicketsNumbers() {
    let checkTickets = true;
    if (CheckTickets() == true) {
        let validLName = /^[1-9]+$/;
        let testlSave = validLName.test(document.getElementById("lSave").value);
        if (!testlSave) {
            document.getElementById("mSave").value = "הקלד עם מספרים בלבד";
            checkTickets = false;
        }
    }
    return checkTickets;
}

