<%--============= Header =================--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="student_header.jsp" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<%--============= Student Subjects =================--%>
<section id="boxes">
    <div class="container">
        <c:forEach var="sub" items="${list}">   
            <div class="box">
                <div class="card">
                    <img class="card-img-top" src="<c:url value="../resources/images/slide1.jpg"/>" alt="Image" style="width:100%">
                    <div class="card-body">
                        <h4 class="card-title">${sub.subject}</h4>
                        <p class="card-text">
                            Среда : ${sub.medium}<br>
                            Стандарт : ${sub.standard}<br>
                            Faculty : ${sub.faculty}</p>
                        <a href="view_subject_content?id=${sub.subject_id}&name=${sub.subject}" class="btn btn-primary">View</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</section>

<%--============= Footer =================--%>
<%@ include file="student_footer.jsp" %>
