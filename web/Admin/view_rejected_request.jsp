<%--================ Header ===================--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<%--============ View Rejected Request ==============--%>
<center class="container">
    <h3>ОТКЛОНЁННЫЕ ЗАПРОСЫ</h3>
</center>

<div class="container-fluid pb-3">
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
                <th>Наименование организации</th>
                <th>Управляющий</th>
                <th>Регистрационный номер</th>
                <th>Стандарт</th>
                <th>Среда</th>
                <th>Адрес</th>
                <th>Почта</th>
                <th>Контактный номер</th> 
                <th>Редактировать</th>
                <th>Подтвердить</th>
            </tr>
        </thead>
        <tbody>
            <c:set var="i" value="1" scope="page" />   
            <c:forEach var="school" items="${list}">   
                <tr>  
                    <td>${i}</td>
                    <c:set var="i" value="${i + 1}" scope="page"/>
                    <td>${school.name}</td>
                    <td>${school.ownername}</td>
                    <td>${school.registerno}</td>
                    <td>${school.standard}</td>
                    <td>${school.medium}</td>
                    <td>${school.address}</td>
                    <td>${school.email}</td>
                    <td>${school.contactno}</td>
                    <td><a href="editschool?id=${school.id}"><button class="btn btn-primary">Редактировать</button></a></td>
                    <td><a href="approve?id=${school.id}&email=${school.email}&name=${school.ownername}&schoolname=${school.name}" class="btn btn-info">Подтвердить</a></td>
                </tr>  
            </c:forEach>   
        </tbody>
    </table>
</div>

<%--================ Footer ===================--%>
<%@ include file="footer.jsp" %>  
