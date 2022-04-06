<%--============= Header =================--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
    
<%--============= Edit =================--%>
<a href="list_school" class="btn btn-success mt-3 ml-5">Назад</a>
<section class="signin">
    <div class="container-fluid">
        <div class="heading"> 
            <h1>Редактировать организацию</h1>
        </div>
        <div class="page-card">
            <c:if test="${not empty error}">
                <div class="alert alert-danger">
                    <strong>Ошибка !</strong> ${error}
                </div>
            </c:if>
            <c:if test="${not empty message}">
                <div class="alert alert-success">
                    <strong>Успех !</strong> ${message}
                </div>
            </c:if>
            <form:form action="saveupdate" modelAttribute="school" method="POST">
                <form:hidden path="id"/>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-university"></i></span>
                    </div>
                    <form:input class="form-control" path="name" placeholder="Наименование организации" required="" />
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-user-o"></i></span>
                    </div>
                    <form:input class="form-control" path="registerno" placeholder="Регистрационный номер" required="" />
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-envelope"></i></span>
                    </div>
                    <form:input class="form-control" path="email" placeholder="Почта" required="" />
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-phone"></i></span>
                    </div>
                    <form:input class="form-control" path="contactno" pattern="[0-9]{11}" placeholder="Контактный номер" required="" />
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-user"></i></span>
                    </div>
                    <form:input  class="form-control" path="ownername" placeholder="Управляющий" required="" />
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-address-card"></i></span>
                    </div>
                    <form:input class="form-control" placeholder="Адрес" path="address" required="" />
                </div>
                Введите диапазон, например, 1-7 или 1-10
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-star"></i></span>
                    </div>
                    <form:input class="form-control" placeholder="Введите стандарт" path="standard" />
                </div>
                Введите разделяемые запятыми значения
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-check-square-o"></i></span>
                    </div>
                    <form:input class="form-control" placeholder="Школьная среда" path="medium" required="" />
                </div>          
                <div class="form-group">
                    <input type="submit" name="update" value="Обновить" class="btn login_btn">
                </div>  
            </form:form>
        </div>
    </div>
</section>
    
<%--============= Footer =================--%>
<%@ include file="footer.jsp" %>