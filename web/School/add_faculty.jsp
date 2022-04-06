<%--================ Header ===================--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="school_header.jsp" %>

<%--================ Add Faculty ===================--%>
<section class="signin">
    <div class="container-fluid">
        <div class="heading">
            <h1><span>Добавить</span> Преподавателя</h1>
        </div>
        <div class="page-card">
            <c:if test="${not empty message}">
                <div class="alert alert-success">
                    <strong>Успех !</strong> ${message}
                </div>
            </c:if>
            <c:if test="${not empty error}">
                <div class="alert alert-danger">
                    <strong>Ошибка !</strong> ${error}
                </div>
            </c:if>
            <form action="savefaculty" method="POST" enctype="multipart/form-data">
                <input type="hidden" name="school_id" value="${sessionScope.id}">       
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
                    <input type="tel" class="form-control" name="contactno" pattern="[0-9]{11}" placeholder="Контактный номер" title="Контактный номер должен состоять из 11 цифр" required="">
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-users"></i></span>
                    </div>
                    <select name="gender" required="">
                        <option selected="" disabled="">Выберите пол</option>
                        <option value="Male">Мужчина</option>
                        <option value="Female">Женщина</option>
                    </select>
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-id-badge"></i></span>
                    </div>
                    <input type="text" class="form-control" name="experience" placeholder="Опыт" required="">
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-star"></i></span>
                    </div>
                    <input type="text" class="form-control" name="subject" placeholder="Введите предмет" required="">
                </div>      
                <div class="custom-file mb-3">
                    <input type="file" class="custom-file-input" id="customFile" size="50" accept=".jpg,.jpeg,.png" name="file" required="">
                    <label class="custom-file-label" for="customFile">Выберите фото</label>
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-user"></i></span>
                    </div>
                    <input type="text" class="form-control" name="username" placeholder="Введите Имя пользователя" pattern="(?=.*\d)(?=.*[a-z]).{4,}" title="Имя пользователя должно содержать не менее 4 альфа-цифровых символов." required="">
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-key"></i></span>
                    </div>
                    <input type="password" class="form-control" name="password" placeholder="Введите пароль" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="Password Must Contain atleast 6 Alpha numeric Characters" required="">
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
