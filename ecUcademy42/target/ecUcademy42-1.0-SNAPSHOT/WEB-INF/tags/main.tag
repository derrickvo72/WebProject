<%@ tag pageEncoding="UTF-8" %>
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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

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
    </style>
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



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<script  type="text/javascript" src="${pageContext.request.contextPath}/public/JS/multiMenu.js"></script>
<script  type="text/javascript" src="${pageContext.request.contextPath}/public/JS/UserStack.js"></script>
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

</script>

</body>

</html>