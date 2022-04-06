<%--================ Header ===================--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@include  file="faculty_header.jsp" %>
    
<%--================ Add Content ===================--%>
<section class="login">
    <div class="container-fluid">
        <div class="heading">
            <h1><span>Добавить </span>Материал</h1>
        </div>
        <div class="page-card">
            <form action="addcontent" method="POST" enctype="multipart/form-data">
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
                    <input type="text" class="form-control" name="topic" placeholder="Введите тему">
                </div>
                <div class="custom-file mb-3">
                    <input type="file" class="custom-file-input" accept=".pdf, .doc" id="customFile" name="file">
                    <label class="custom-file-label" for="customFile">Выберите файл</label>
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