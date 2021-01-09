<%@ tag pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Courses - Learn Anything, On Your Schedule | Ucademy</title>
    <link rel="icon" href="https://anonyviet.com/resource/phaohoa2/favicon.ico" type="image/x-ico"/>


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        <%@include file="/WEB-INF/css/dropdown.css"%>
        <%@include file="/WEB-INF/css/Home.css"%>
        <%@include file="/WEB-INF/css/footer.css"%>
        <%@include file="/WEB-INF/css/multimenu.css"%>
        <%@include file="/WEB-INF/css/carousel.css"%>
        <%@include file="/WEB-INF/css/Font.css"%>
        <%@include file="/public/colorlib-regform/colorlib-regform-7/css/style.css"%>
    </style>
</head>

<body>
<jsp:include page="../../views/partials/nav.jsp"/>
<div>
    <jsp:doBody/>
</div>
<jsp:include page="../../views/partials/footer.jsp"/>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<script  type="text/javascript" src="${pageContext.request.contextPath}/public/JS/multiMenu.js"></script>

<%--<script type="text/javascript">--%>
<%--    $('.feat-btn').click(function (){--%>
<%--        $('.menu-mini-toggle ul .feat-show').toggleClass("show");--%>
<%--    });--%>
<%--</script>--%>

</body>

</html>