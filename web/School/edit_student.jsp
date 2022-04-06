<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--============= Header =================--%>
<%@ include file="school_header.jsp" %>

<%--============= Edit Student =================--%>
<section class="signin">
    <div class="container-fluid">
        <div class="heading">
            <h1><span>Изменить</span> Учащегося</h1>
        </div>
        <div class="page-card">
            <c:if test="${not empty message}">
                <div class="alert alert-success">
                    <strong>Успех !</strong> ${message}
                </div>
            </c:if> 
            <form:form action="updatestudent" modelAttribute="student" method="POST">
                <form:hidden path="id"/>
                <form:hidden path="school_id"/>       
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-users"></i></span>
                    </div>
                    <form:select name="standard" path="standard" required="">
                        <form:options items="${school_standard}"/>
                    </form:select>
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-tasks"></i></span>
                    </div>
                    <form:select name="medium" path="medium" required="">
                        <form:options items="${medium}"/>
                    </form:select>
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-id-badge"></i></span>
                    </div>
                    <form:input class="form-control" path="rollno" placeholder="Регистрационный номер" required=""/>
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-user-circle"></i></span>
                    </div>
                    <form:input class="form-control" path="fname" placeholder="Имя" required="" />
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-user-circle-o"></i></span>
                    </div>
                    <form:input class="form-control" path="mname" placeholder="Отчество" required="" />
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-user-o"></i></span>
                    </div>
                    <form:input class="form-control" path="lname" placeholder="Фамилия" required="" />
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-envelope"></i></span>
                    </div>
                    <form:input  class="form-control" path="email" placeholder="Почта" required="" />
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-phone"></i></span>
                    </div>
                    <form:input class="form-control" path="contactno" placeholder="Контактный номер" required="" />
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-users"></i></span>
                    </div>
                    <form:select path="gender" required="">
                        <form:option value="Male">Мужчина</form:option>
                        <form:option value="Female">Женщина</form:option>
                    </form:select>
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                    </div>
                    <form:input type="Date" class="form-control" path="dob" placeholder="Дата рождения" required="" />
                </div>
                <div class="form-group">
                    <input type="submit" value="Сохранить" class="btn login_btn">
                </div>  
            </form:form>
        </div>
    </div>
</section>

<%--============= Footer =================--%>
<%@ include file="school_footer.jsp" %>

