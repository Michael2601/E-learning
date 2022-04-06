<%--============= Header =================--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

<%--============= FeedBack List =================--%>
<center class="container"><h3>ОТЗЫВЫ</h3></center>    
<div class="col-lg-12 p-4">
    <c:if test="${not empty sessionScope.error}">
        <div class="alert alert-danger">
            <strong>Ошибка!</strong> ${sessionScope.error}
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
                <th>Номер</th>
                <th>Имя</th>
                <th>Почта</th>
                <th>Сообщение</th>
                <th>Удалить</th>
            </tr>
        </thead>
        <tbody>
            <c:set var="i" value="1" scope="page" />   
            <c:forEach var="feedback" items="${list}">   
                <tr>  
                    <td>${i}</td>
                    <c:set var="i" value="${i + 1}" scope="page"/>
                    <td>${feedback.name}</td>
                    <td>${feedback.email}</td>
                    <td>${feedback.message}</td>
                    <td><a href="deletefeedback?id=${feedback.id}" class="btn btn-danger" onclick="return confirm('Вы хотите удалить?')">Удалить</a></td>
                </tr>  
            </c:forEach>   
        </tbody>
    </table>
</div>
<%--============= Footer =================--%>
<%@ include file="footer.jsp" %>  

