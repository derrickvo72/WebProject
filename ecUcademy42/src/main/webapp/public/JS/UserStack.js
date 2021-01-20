
    function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
}
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
}
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}

    // Get the element with id="defaultOpen" and click on it
    document.getElementById("defaultOpen").click();

// Upload Anh
$(function (){
    $('#file-upload').change(function (e){
        var img = URL.createObjectURL(e.target.files[0]);
        $('.profile-img img').attr('src', img);
    });
});
