<%--================ Header ===================--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
    
<%--============== Log in Form ================--%>
<section class="login">
    <div class="container-fluid">
        <div class="heading">
            <h1><span>Войти</span></h1>
        </div>
        <div class="page-card">
            <c:if test="${not empty error}">
                <div class="alert alert-danger">
                    <strong>Отказ !</strong> ${error}
                </div>
            </c:if>
            <c:if test="${not empty message}">
                <div class="alert alert-success">
                    <strong>Выполнено !</strong> ${message}
                </div>
            </c:if>
            <form action="loginCheck" method="POST">
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-users"></i></span>
                    </div>
                    <select required="" class="" name="loginas" required="">
                        <option selected="" disabled="">Войти как</option>
                        <option value="student">Студент</option>
                        <option value="teacher">Преподаватель</option>
                        <option value="school">Управляющий</option>
                    </select>
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-user"></i></span>
                    </div>
                    <input type="text" class="form-control" name="username" placeholder="Введите Имя пользователя" required="" pattern="(?=.*\d)(?=.*[a-z]).{4,}" title="Пароль должен содержать не менее 4 буквенно-цифровых символов">
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-key"></i></span>
                    </div>
                    <input type="password" class="form-control" name="password" placeholder="Введите пароль" required=""
                           pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="Пароль должен содержать не менее 6 буквенно-цифровых символов" required="">
                </div>
                <div class="form-group">
                    <input type="submit" value="Войти" class="btn login_btn">
                </div>
                <div class="form-group">
                    <h6><a href="forgot">Забыли пароль?</a></h6>
                </div>
            </form>
        </div>
    </div>
</section>
    
<%--=============== Footer ==================--%>
<%@ include file="footer.jsp" %>