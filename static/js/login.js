

$("#loginPop").click(function () {
    showDialog();
})
$("#signPop").click(function () {
    showSign();
})

function showDialog() {
    addTxt();
    $("#mydiv").load("login.html");
}
function showSign() {
    addTxt();
    $("#mydiv").load("signin.html");
}
function addTxt() {
    var objNewDiv = $('<div>', { 'id': 'mydiv', 'class': 'menu' });
    $("body").append(objNewDiv);
}

