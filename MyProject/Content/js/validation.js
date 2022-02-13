function nam() {
    var name = document.getElementById("txt").value.trim();
    var spname = document.getElementById("spname");
    spname.innerHTML = "";
    if (name.length == 0) {
        spname.innerHTML = "Please Enter Name.";
        status = false;
    }
    else if (name.length < 3) {
        spname.innerHTML = "Please enter a Valid name";
        status = false;
    }
    return status;
}
function emvali() {
    var email = document.getElementById("email").value.trim();
    var spmail = document.getElementById("spmail");
    spmail.innerHTML = "";
    if (email.length == 0) {

        spmail.innerHTML = "Please Enter Email Id.";
    }    else if (email.length < 8) {

        spmail.innerHTML = "Please Enter Valid Email Id.";
    }
}


function mobb() {
    var mob = document.getElementById("num").value.trim();
    var spmob = document.getElementById("spmob");
    spmob.innerHTML = "";
    if (mob.length == 0) {
        spmob.innerHTML = "Please  enter Mobile Number.";
        status = false;

    }
    else if (mob.length == 10) {
        var ch = mob.charCodeAt(0);
        if (ch >= 54 && ch <= 57) {

        }
        else {
            spmob.innerHTML = "Invalid Indian Mobile Number.";
            status = false;
        }
    }
    else {
        spmob.innerHTML = "Invalid mobile number.";
        status = false;
    }
    return status;
}


function mssgs() {
    var msg = document.getElementById("mssg").value.trim();
    var spmsg = document.getElementById("spmsg");    spmsg.innerHTML = "";    if (msg.length == 0) {
        spmsg.innerHTML = "Please Enter Subject.";
        status = false;
    }
    else if (msg.length < 3) {
        spmsg.innerHTML = "Please enter a Valid Subject";
        status = false;
    }    return status;
}




