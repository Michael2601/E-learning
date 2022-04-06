<%--================ Header ===================--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="faculty_header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
    
<%--================ Faculty Classes ===================--%>
<section id="boxes">
    <center class="container">
        <h3>Ваши группы</h3>
    </center>
    <div class="container">
        <c:forEach var="classes" items="${list}">    
            <div class="box">
                <div class="card">
                    <img class="card-img-top" src="<c:url value="../resources/images/slide1.jpg"/>" alt="Image" style="width:100%">
                    <div class="card-body">
                        <h4 class="card-title">${classes.subject} ${classes.standard}</h4>
                        <h6 class="card-text">Предмет : ${classes.subject}</h6>
                        <h6 class="card-text">Стандарт : ${classes.standard}</h6>
                        <h6 class="card-text">Среда : ${classes.medium}</h6>
                        <a href="add_content" class="btn btn-success">Добавить материал</a>
                    </div>
                </div>
            </div>
        </c:forEach>   
    </div>
</section>
    
<%--================ Footer ===================--%>
<%@include file="footer.jsp" %>