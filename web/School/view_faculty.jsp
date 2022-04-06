<%--============= Header =================--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="school_header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

<%--============= Faculty List =================--%>
<center class="container">
    <h3>СПИСОК ПРЕПОДАВАТЕЛЕЙ</h3>
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
                <th>Name</th>
                <th>Почта</th>
                <th>Contact</th>
                <th>Пол</th>
                <th>Опыт</th>
                <th>Предмет</th>
                <th>Фото</th>
                <th>Редактировать</th>
                <th>Удалить</th>
            </tr>
        </thead>
        <tbody>
            <c:set var="i" value="1" scope="page" />   
            <c:forEach var="faculty" items="${list}">   
                <tr>  
                    <td>${i}</td>
                    <c:set var="i" value="${i + 1}" scope="page"/>
                    <td>${faculty.fname} ${faculty.mname} ${faculty.lname}</td>
                    <td>${faculty.email}</td>
                    <td>${faculty.contactno}</td>
                    <td>${faculty.gender}</td>
                    <td>${faculty.experience}</td>
                    <td>${faculty.subject}</td>
                    <td><img style="height:100px; width:100px" src="<c:url value="../resources/photos/${faculty.filename}"/>"></td>
                    <td><a href="edit_faculty?id=${faculty.id}" class="btn btn-primary">Редактировать</a></td>
                    <td><a href="deletefaculty?id=${faculty.id}" class="btn btn-danger" onclick="return confirm('Вы хотите удалить?')">Удалить</a></td>
                </tr>  
            </c:forEach>   
        </tbody>
    </table>
</div>

<%--============= Footer =================--%>
<%@ include file="school_footer.jsp" %>
