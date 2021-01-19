<%@ tag pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Courses - Learn Anything, On Your Schedule | Ucademy</title>
    <link rel="icon" href="${pageContext.request.contextPath}/public/images/udemy.png" type="image/x-ico"/>


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Bootstrap files (jQuery first, then Popper.js, then Bootstrap JS) -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <style>
        <%@include file="/WEB-INF/css/dropdown.css"%>
        <%@include file="/WEB-INF/css/Home.css"%>
        <%@include file="/WEB-INF/css/footer.css"%>
        <%@include file="/WEB-INF/css/multimenu.css"%>
        <%@include file="/WEB-INF/css/carousel.css"%>
        <%@include file="/WEB-INF/css/Font.css"%>
        <%@include file="/public/colorlib-regform/colorlib-regform-7/css/style.css"%>
        <%@include file="/WEB-INF/css/TabStackUser.css"%>
    </style>
</head>

<body>
<div>
    <div style="width: 100px"></div>
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
<script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" type="text/javascript"></script>
<script  type="text/javascript" src="${pageContext.request.contextPath}/public/JS/UserStack.js"></script>
</body>

</html>