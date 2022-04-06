<%--================ Header ===================--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<%--============= View School List ==============--%>
<center class="container">
    <h3>СПИСОК ОРГАНИЗАЦИЙ</h3>
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
                <th>Идентификатор организации</th>
                <th>Наименование организации</th>
                <th>Управляющий</th>
                <th>Регистрационный номер</th>
                <th>Стандарт</th>
                <th>Среда</th>
                <th>Адрес</th>
                <th>Почта</th>
                <th>Контактный номер</th> 
                <th>Редактировать</th>
                <th>Удалить</th>
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
                    <td><a href="editschool?id=${school.id}" class="btn btn-primary">Редактировать</a></td>
                    <td><a href="deleteschool?id=${school.id}" class="btn btn-danger" onclick="return confirm('Вы хотите удалить организацию навсегда?')">Удалить</a></td>
                </tr>  
            </c:forEach>   
        </tbody>
    </table>
</div>
<%--============= Footer =================--%>
<%@ include file="footer.jsp" %>  
