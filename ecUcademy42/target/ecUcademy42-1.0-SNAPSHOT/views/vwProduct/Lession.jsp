<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<t:main>
  <jsp:body>
    <style>
      <%@include file="/WEB-INF/css/Learn.css"%>
    </style>
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <section style="padding-top: 3.5rem">
      <div style="background-color: black; margin-bottom: 5rem" class="container-fluid">
        <div id="playlist">
          <h4>{name}</h4>
          <div class="playvideo">
              <%--                        <iframe width="100%" height="400"  id="changeVideo" src="https://www.youtube.com/embed/lt3oevm_-N0" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>--%>
              <%--lay video truc tiep tu folder--%>
              <%--                        <video style="outline:none; height: 500px;width: 100%;" id="changeVideo" src="${pageContext.request.contextPath}/public/Xem ví dụ.mp4" controls loop type="mp4"></video>--%>

            <iframe width="100%" height=600 id="changeVideo" src="https://www.youtube.com/embed/_YEb82IF1KM?autoplay=1"  frameborder="0" allowfullscreen></iframe>
          </div>
          <ul id="listIems">
            <li>
              <div class="courseName">
                  <%--                                <a class="courseNameLink" href="#" data-namevideo="${pageContext.request.contextPath}/public/Xem ví dụ.mp4">Bai 1</a>--%>
                <a class="courseNameLink changeActive " href="#" data-namevideo="https://www.youtube.com/embed/_YEb82IF1KM">Bai 1</a>
              </div>
              <div class="courseTime">
                <h5 class="changeActive ">14:15</h5>
              </div>
            </li>
            <li>
              <div class="courseName">
                  <%--                                <a class="courseNameLink"  href="#" data-namevideo="${pageContext.request.contextPath}/public/Course- LẬP TRÌNH WEB - 18110CL2A.mp4">Bai 2</a>--%>
                <a class="courseNameLink changeActive" href="#" data-namevideo="https://www.youtube.com/embed/3_7lIeySBao">Bai 2</a>
              </div>
              <div class="courseTime">
                <h5 class="changeActive">12:15</h5>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </section>

    <script>
      $(document).ready(function ()
      {
        $('.courseNameLink').click(function (e){
          e.preventDefault()
          //console.log()
          let listItem=$('#listIems').children();
          // listItem.forEach(e=>{
          //     e.querySelectorAll('.changeActive').forEach(t=>t.classList.remove('active'))
          // })
          // e.currentTarget.classList.toggle("active")
          let srcVideo=e.currentTarget.dataset.namevideo
          let video=$('#changeVideo')
          video.attr('src',srcVideo)
          video.load()
        })
      })

    </script>
  </jsp:body>
</t:main>