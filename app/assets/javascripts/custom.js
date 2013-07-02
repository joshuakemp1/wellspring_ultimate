$(document).ready(function () {
 $("select.nav-select").change(function() {
window.location = $(this).find("option:selected").val();
});


$(document).ready(function(){
setTimeout(function(){
$(".alert").fadeOut("slow", function () {
$(".alert").remove();
});

}, 5000);
});

});