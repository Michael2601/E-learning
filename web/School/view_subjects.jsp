<%--============= Header =================--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="school_header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

<%--============= View Subjects =================--%>
<center class="container">
    <h3>ПРЕДМЕТЫ</h3>
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
                <th>Идентификатор предмета</th>
                <th>Предмет</th>
                <th>Стандарт</th>
                <th>Среда</th>
                <th>Удалить</th>
            </tr>
        </thead>
        <tbody>
            <c:set var="i" value="1" scope="page" />
            <c:forEach var="subject" items="${list}">   
                <tr>  
                    <td>${i}</td>
                    <c:set var="i" value="${i + 1}" scope="page"/>
                    <td>${subject.name}</td>
                    <td>${subject.standard}</td>
                    <td>${subject.medium}</td>
                    <td><a href="deletesub?id=${subject.id}" class="btn btn-danger" onclick="return confirm('Вы хотите удалить?')">Удалить</a></td>
                </tr>  
            </c:forEach>
        </tbody>
    </table>
</div>

<%--============= Footer =================--%>
<%@ include file="school_footer.jsp" %>
