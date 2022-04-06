<%--============= Header =================--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="school_header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

<%--============= Student List =================--%>
<center class="container">
    <h3>СПИСОК СТУДЕНТОВ</h3>
</center>
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
<div class="col-lg-12 p-3">
    <table id="myTable" class="display">
        <thead>
            <tr>
                <th>ID</th>
                <th>Roll no</th>
                <th>Std</th>
                <th>Среда</th>
                <th>Имя</th>
                <th>Почта</th>
                <th>Номер</th>
                <th>Пол</th>
                <th>День рождения</th>
                <th>Фото</th>
                <th>Редактировать</th>
                <th>Удалить</th>
            </tr>
        </thead>
        <tbody>
            <c:set var="i" value="1" scope="page" />
            <c:forEach var="student" items="${list}">   
                <tr>  
                    <td>${i}</td>
                    <c:set var="i" value="${i + 1}" scope="page"/>
                    <td>${student.rollno}</td>  
                    <td>${student.standard}</td>  
                    <td>${student.medium}</td>   
                    <td>${student.fname} ${student.mname} ${student.lname}</td>
                    <td>${student.email}</td>
                    <td>${student.contactno}</td>
                    <td>${student.gender}</td>
                    <td>${student.dob}</td>
                    <td><img style="height:100px; width:100px" src="<c:url value="../resources/photos/${student.filename}"/>"></td>
                    <td><a href="edit_student?id=${student.id}" class="btn btn-primary">Редактировать</a></td>
                    <td><a href="deletestud?id=${student.id}" class="btn btn-danger" onclick="return confirm('Вы хотите удалить?')">Удалить</a></td>       </tr>  
                </c:forEach>
        </tbody>
    </table>
</div>

<%--============= Footer =================--%>
<%@ include file="school_footer.jsp" %>
