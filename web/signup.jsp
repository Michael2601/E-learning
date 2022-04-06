<%--============= Header =================--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
    
<%--============= Sign Up =================--%>
<section class="signin"> 
    <div class="container-fluid">
        <div class="heading">
            <h1><span>Регистрация</span></h1>
        </div>
        <div class="page-card">
            <c:if test="${not empty message}">
                <div class="alert alert-success container">
                    <strong>Регистрация успешна!</strong> ${message}
                </div><br>
            </c:if> 
            <form action="register" method="POST">
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-university"></i></span>
                    </div>
                    <input type="text" class="form-control" name="name" placeholder="Наименование организации" required="">
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-user-o"></i></span>
                    </div>
                    <input type="text" class="form-control" name="registerno" placeholder="Регистрационный номер" required="">
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
                    <input type="tel" class="form-control" name="contactno" pattern="[0-9]{11}" placeholder="Контактный номер" title="Контактный номер должен состоять из 11 цифр" required="">
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-user"></i></span>
                    </div>
                    <input type="text" class="form-control" name="ownername" placeholder="Управляющий" required="">
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-address-card"></i></span>
                    </div>
                    <input type="text" class="form-control" placeholder="Адрес" name="address" required="">
                </div>
                Введите диапазон, например, 1-7 или 1-10
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-star"></i></span>
                    </div>
                    <input type="text" class="form-control" placeholder="Введите стандарт" name="standard" required="">
                </div>
                Введите разделяемые запятыми значения
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-check-square-o"></i></span>
                    </div>
                    <input type="text" class="form-control" placeholder="Школьная среда" name="medium" required="">
                </div>          
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-user"></i></span>
                    </div>
                    <input type="text" class="form-control" placeholder="Введите Имя пользователя" name="username" pattern="(?=.*\d)(?=.*[a-z]).{4,}" title="Имя пользователя должно содержать не менее 4 альфа-цифровых символов." required="">
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-key"></i></span>
                    </div>
                    <input type="password" name="password" placeholder="Введите пароль" class="form-control" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="Имя пользователя должно содержать не менее 6 альфа-цифровых символов." required="">
                </div>
                <div class="form-group">
                    <input type="submit" name="signup" value="Зарегистрироваться" class="btn login_btn">
                </div>  
            </form>
        </div>
    </div>
</section>
    
<%--============= Footer =================--%>
<%@ include file="footer.jsp" %>