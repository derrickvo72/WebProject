$(function() {
    $('#Avatar').on('click', function() {
        $('#upAvatar').click();
    });
});

function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function(e) {
            $('#Avatar').attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
    } else {
        alert('select a file to see preview');
        $('#Avatar').attr('src', '');
    }
}
$("#upAvatar").click(function() {
    $('#upAvatar').change();
});
$("#upAvatar").change(function() {
    readURL(this);
});