<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--================ Header ===================--%>
<%@ include file="school_header.jsp" %>

<%--================ Add Student ===================--%>
<section class="signin">
    <div class="container-fluid">
        <div class="heading">
            <h1><span>Добавить</span> Учащегося</h1>
        </div>
        <div class="page-card">
            <c:if test="${not empty error}">
                <div class="alert alert-danger">
                    <strong>Ошибка !</strong> ${error}
                    <%session.removeAttribute("error"); %>
                </div>
            </c:if>
            <c:if test="${not empty message}">
                <div class="alert alert-success">
                    <strong>Успех !</strong> ${message}
                    <%session.removeAttribute("message"); %>
                </div>
            </c:if> 
            <form action="savestudent" method="POST" enctype="multipart/form-data">
                <input type="hidden" name="school_id" value="${sessionScope.id}">       
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-users"></i></span>
                    </div>
                    <form:select name="standard" path="standard" required="">
                        <form:option value="NONE" label="Выберите стандарт" />
                        <form:options items="${school_standard}"/>
                    </form:select>
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-tasks"></i></span>
                    </div>
                    <form:select name="medium" path="medium" required="">
                        <form:option value="NONE" label="Выберите среду" disabled="" />
                        <form:options items="${medium}"/>
                    </form:select>
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-id-badge"></i></span>
                    </div>
                    <input type="text" class="form-control" name="rollno" placeholder="Регистрационный номер" required="">
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-user-circle"></i></span>
                    </div>
                    <input type="text" class="form-control" name="fname" placeholder="Имя" required="">
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-user-circle-o"></i></span>
                    </div>
                    <input type="text" class="form-control" name="mname" placeholder="Отчество" required="">
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-user-o"></i></span>
                    </div>
                    <input type="text" class="form-control" name="lname" placeholder="Фамилия" required="">
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-envelope"></i></span>
                    </div>
                    <input type="email" class="form-control" name="email" placeholder="Почта" required="">
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-phone"></i></span>
                    </div>
                    <input type="text"class="form-control" name="contactno" placeholder="Контактный номер" required="">
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-users"></i></span>
                    </div>
                    <select name="gender">
                        <option selected="" disabled="">Выберите пол</option>
                        <option value="Male">Мужчина</option>
                        <option value="Female">Женщина</option>
                    </select>
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                    </div>
                    <input type="Date" class="form-control" name="dob" placeholder="дата рождения" required="">
                </div>
                <div class="custom-file mb-3">
                    <input type="file" class="custom-file-input" accept=".jpg,.jpeg,.png" id="customFile" name="file">
                    <label class="custom-file-label" for="customFile">Выберите фото</label>
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-user"></i></span>
                    </div>
                    <input type="text" class="form-control" name="username" placeholder="Введите Имя пользователя" required="">
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-key"></i></span>
                    </div>
                    <input type="password" class="form-control" name="password" placeholder="Введите пароль" required="">
                </div>
                <div class="form-group">
                    <input type="submit" value="Сохранить" class="btn login_btn">
                </div>  
            </form>
        </div>
    </div>
</section>

<%--================ Footer ===================--%>                
<%@ include file="school_footer.jsp" %>

