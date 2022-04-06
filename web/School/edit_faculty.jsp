<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--============= Header =================--%>
<%@ include file="school_header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    

<%--================ Edit Faculty ===================--%>
<section class="signin">
    <div class="container-fluid">
        <div class="heading">
            <h1><span>Редактировать</span> Преподавателя</h1>
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
            <form:form action="saveupdatefac" modelAttribute="faculty" method="POST">
                <form:hidden path="id"/>
                <form:hidden path="school_id"/>       
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
                    <form:input class="form-control" path="email" placeholder="Почта" required="" />
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-phone"></i></span>
                    </div>
                    <form:input class="form-control" path="contactno" pattern="[0-9]{11}" placeholder="Контактный номер" title="Контактный номер должен состоять из 11 цифр" required=""/>
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
                        <span class="input-group-text"><i class="fa fa-id-badge"></i></span>
                    </div>
                    <form:input class="form-control" path="experience" placeholder="Опыт" required="" />
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-star"></i></span>
                    </div>
                    <form:input class="form-control" path="subject" placeholder="Введите предмет" required="" />
                </div>      
                <div class="form-group">
                    <input type="submit" value="Сохранить" class="btn login_btn">
                </div>  
            </form:form>
        </div>
    </div>
</section>

<%--================ Footer ===================--%>
<%@ include file="school_footer.jsp" %>
