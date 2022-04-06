<%--================ Header ===================--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@include file="faculty_header.jsp" %>
    
<%--================ Add Video ===================--%>
<section class="login">
    <div class="container-fluid">
        <div class="heading">
            <h1><span>Добавить </span>Видео</h1>
        </div>
        <div class="page-card">
            <c:if test="${not empty error}">
                <div class="alert alert-danger">
                    <strong>Отказ !</strong> ${error}
                    <%session.removeAttribute("error"); %>
                </div>
            </c:if>
            <c:if test="${not empty message}">
                <div class="alert alert-success">
                    <strong>Выполнено !</strong> ${message}
                    <%session.removeAttribute("message"); %>
                </div>
            </c:if>
            <form action="addvideo" method="POST">
                <input type="hidden" name="school_id" value="${sessionScope.school_id}">       
                <input type="hidden" name="faculty_id" value="${sessionScope.id}">       
                <input type="hidden" name="faculty" value="${sessionScope.faculty}">       
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-users"></i></span>
                    </div>
                    <form:select name="standard" path="standard" required="">
                        <form:option value="NONE" label="Выберите стандарт" disabled=""/>
                        <form:options items="${standard}"/>
                    </form:select>
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-asterisk"></i></span>
                    </div>
                    <form:select name="medium" path="medium" required="">
                        <form:option value="NONE" label="Выберите среду" disabled="" />
                        <form:options items="${medium}"/>
                    </form:select>
                </div>     
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-tasks"></i></span>
                    </div>
                    <form:select name="subject" path="subject" required="">
                        <form:option value="NONE" label="Выберите предмет" disabled="" />
                        <form:options items="${subject}"/>
                    </form:select>
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-star"></i></span>
                    </div>
                    <input type="text" class="form-control" name="topic" placeholder="Выберите тему" required="">
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-link"></i></span>
                    </div>
                    <input type="text" class="form-control" name="link" placeholder="Введите ссылку" required="">
                </div>
                    
                <div class="form-group">
                    <input type="submit" value="Сохранить" class="btn login_btn"> 
                </div>	
            </form>
        </div>
    </div>
</section>
    
<%--================ Footer ===================--%>               
<%@include file="footer.jsp" %>