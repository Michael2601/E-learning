<%--================ Header ===================--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@include file="faculty_header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

<%--================ View Videos ===================--%>
<center class="container">
    <h3>ВИДЕО</h3>
</center>
<div class="col-lg-12 p-3">
    <c:if test="${not empty sessionScope.error}">
        <div class="alert alert-danger">
            <strong>Ошибка !</strong> ${sessionScope.error}
            <%session.removeAttribute("error"); %>
        </div>
    </c:if>
    <c:if test="${not empty sessionScope.message}">
        <div class="alert alert-success">
            <strong>Успех !</strong> ${sessionScope.message}
            <%session.removeAttribute("message"); %>
        </div>
    </c:if>
    <table id="myTable" class="display">
        <thead>
            <tr>
                <th>Идентификатор</th>
                <th>Стандарт</th>
                <th>Среда</th>
                <th>Предмет</th>
                <th>Тема</th>
                <th>Video</th>
                <th>Коментарии</th>
                <th>Удалить</th>
            </tr>
        </thead>
        <tbody>
            <c:set var="i" value="1" scope="page" />
            <c:forEach var="video" items="${list}">   
                <tr>  
                    <td>${i}</td>
                    <c:set var="i" value="${i + 1}" scope="page"/>
                    <td>${video.standard}</td>
                    <td>${video.medium}</td>
                    <td>${video.subject}</td>
                    <td>${video.topic}</td>
                    <td>
                        <div class="embed-responsive embed-responsive-4by3" id="video">
                            <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/${fn:substringAfter(link, "v=")}" allowfullscreen></iframe>
                        </div>
                    </td>
                    <td><a href="viewcomments?id=${video.id}" class="btn btn-info">Коментарии</a></td>
                    <td><a href="deletevid?id=${video.id}" class="btn btn-danger" onclick="return confirm('Вы хотите удалить?')">Удалить</a></td>
                </tr>  
            </c:forEach>   
        </tbody>
    </table>
</div>

<%--================ Footer ===================--%>           
<%@ include file="footer.jsp" %>  

