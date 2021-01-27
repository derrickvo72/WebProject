<%@ tag pageEncoding="UTF-8" %>
<%@attribute name="css" fragment="true" required="false" %>
<%@attribute name="js" fragment="true" required="false" %>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Courses - Learn Anything, On Your Schedule | Ucademy</title>
    <link rel="icon" href="${pageContext.request.contextPath}/public/images/udemy.png" type="image/x-ico"/>

    <%--moi them--%>
    <%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/OwlCarousel2-2.3.4/dist/assets/owl.carousel.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/OwlCarousel2-2.3.4/dist/assets/owl.theme.default.min.css" type="text/css">
    <%--    moi them--%>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<%--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">--%>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
<%----%>
    <!-- Bootstrap files (jQuery first, then Popper.js, then Bootstrap JS) -->
    <%--    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>--%>
    <style>
        <%@include file="/WEB-INF/css/dropdown.css"%>
        <%@include file="/WEB-INF/css/Home.css"%>
        <%@include file="/WEB-INF/css/footer.css"%>
        <%@include file="/WEB-INF/css/multimenu.css"%>
        <%@include file="/WEB-INF/css/carousel.css"%>
        <%@include file="/WEB-INF/css/Font.css"%>
        <%@include file="/WEB-INF/css/star.css"%>
        <%@include file="/public/colorlib-regform/colorlib-regform-7/css/style.css"%>
        <%@include file="/WEB-INF/css/TabStackUser.css"%>
        <%@include file="/WEB-INF/css/Profile.css"%>
        <%@include file="/WEB-INF/css/Cart.css"%>
<%--        <%@include file="/WEB-INF/css/Filter.css"%>--%>
    </style>
    <jsp:invoke fragment="css"/>
</head>

<body>
<div>
    <jsp:include page="../../views/partials/nav.jsp"/>
</div>
<div>

    <jsp:doBody/>

</div>
<%--foot--%>
<div>
    <jsp:include page="../../views/partials/footer.jsp"/>
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<script  type="text/javascript" src="${pageContext.request.contextPath}/public/JS/multiMenu.js"></script>
<script  type="text/javascript" src="${pageContext.request.contextPath}/public/JS/UserStack.js"></script>
<script  type="text/javascript" src="${pageContext.request.contextPath}/public/JS/Profile.js"></script>
<script src="${pageContext.request.contextPath}/public/OwlCarousel2-2.3.4/docs/assets/vendors/jquery.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/public/OwlCarousel2-2.3.4/dist/owl.carousel.js" type="text/javascript" ></script>
<script type="text/javascript">
    $('.owl-carousel').owlCarousel({
        // loop: true,
        autoplay: true,
        autoplayTimeout: 2000, //2000ms = 2s;
        autoplayHoverPause: true,

        loop: true,
        margin: 10,
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 3
            },
            1000: {
                items: 4
            }
        }
    })

    // chon anh cho khoa hoc
    $(".custom-file-input").on("change", function() {
        var fileName = $(this).val().split("\\").pop();
        $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
    });


    //Get the button
    var mybutton = document.getElementById("myBtn");

    // When the user scrolls down 20px from the top of the document, show the button
    window.onscroll = function() {scrollFunction()};

    function scrollFunction() {
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            mybutton.style.display = "block";
        } else {
            mybutton.style.display = "none";
        }
    }

    // When the user clicks on the button, scroll to the top of the document
    function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
    }
    document.getElementById("txtSearch")
        .addEventListener("keyup", function(event) {
            event.preventDefault();
            if (event.key === "Enter") {
                document.getElementById("btnSearch").click();
            }
        });
</script>

<%--<script>--%>
<%--    const username = $('#txtUsername').val();--%>
<%--    $.getJSON('${pageContext.request.contextPath}/Home/Buy/IsAvailable?user=' + username, function (data) {--%>
<%--        if (data === true) {--%>
<%--            $('#buy-form').off('submit').submit();--%>
<%--        } else {--%>
<%--            alert('Not available.');--%>
<%--        }--%>
<%--    });--%>
<%--    $('#txtUsername').select();--%>
<%--</script>--%>


<jsp:invoke fragment="js"/>
</body>

</html>