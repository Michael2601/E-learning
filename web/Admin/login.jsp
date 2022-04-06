<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--================ Header ===================--%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <link rel="shortcut icon" href="<c:url value="../resources/images/logo-2.png" />">
        <title>Learn</title>
        <meta name="viewport" content="width=device-width, intial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="<c:url value="../resources/css/style.css" />">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <%--============= Navigation Bar =================--%>  
        <header>
            <div>
                <center class="m-2">
                    <img src="<c:url value="../resources/images/logo.png"/>">
                </center>
            </div>	
        </header>
        <%--============== Log in Form ================--%>
        <section class="login">
            <div class="container-fluid">
                <div class="heading">
                    <h1>Вход для администратора</h1>
                </div>
                <div class="page-card">
                    <c:if test="${not empty error}">
                        <div class="alert alert-danger">
                            <strong>Отказ !</strong> ${error}
                        </div>
                    </c:if>
                    <form action="loginCheck" method="POST">
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fa fa-user"></i></span>
                            </div>
                            <input type="text" class="form-control" name="username" placeholder="Введите Имя пользователя" required=""
                                   pattern="(?=.*\d)(?=.*[a-z]).{4,}" title="Имя пользователя должно содержать не менее 4 альфа-цифровых символов.">
                        </div>
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fa fa-key"></i></span>
                            </div>
                            <input type="password" class="form-control" name="password" placeholder="Введите пароль" required=""
                                   pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="Password Must Contain atleast 6 Alpha numeric Characters" required="">
                        </div>
                        <div class="form-group">
                            <input type="submit" value="Login" class="btn login_btn">
                        </div>	
                    </form>
                </div>
            </div>
        </section>
        <%--=============== Footer ==================--%>
        <%@ include file="footer.jsp" %>