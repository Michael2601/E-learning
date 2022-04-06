<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--================ Header ===================--%>
<%@ include file="header.jsp" %>
    
<%--============== Log in Form ================--%>
<section class="login">
    <div class="container-fluid">
        <div class="heading">
            <h1>Забыли пароль</h1>
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
            <form action="sendPassword" method="POST">
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-users"></i></span>
                    </div>
                    <select required="" name="loginas">
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
                    <input type="text" class="form-control" name="username" placeholder="Введите Имя пользователя" required="" pattern="(?=.*\d)(?=.*[a-z]).{4,}" title="Имя пользователя должно содержать не менее 4 альфа-цифровых символов.">
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-envelope"></i></span>
                    </div>
                    <input type="email" class="form-control" name="email" placeholder="ВВедите почту" required="">
                </div>
                <div class="form-group">
                    <input type="submit" value="Подтвердить" class="btn login_btn">
                </div>
            </form>
        </div>
    </div>
</section>
    
<%--=============== Footer ==================--%>
<%@ include file="footer.jsp" %>