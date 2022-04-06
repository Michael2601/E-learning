<%--============= Header =================--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="student_header.jsp" %>

<%--============= Carousel =================--%>
<div id="demo" class="carousel slide" data-ride="carousel">
    <ul class="carousel-indicators">
        <li data-target="#demo" data-slide-to="0" class="active"></li>
        <li data-target="#demo" data-slide-to="1"></li>
        <li data-target="#demo" data-slide-to="2"></li>
    </ul>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="<c:url value="../resources/images/4.jpg"/>" alt="Slide1" width="1100" height="500">
            <div class="carousel-caption">
                
            </div>   
        </div>
        <div class="carousel-item">
            <img src="<c:url value="../resources/images/Second.jpg"/>" alt="Slide2" width="1100" height="500">
            <div class="carousel-caption">
                
            </div>   
        </div>
        <div class="carousel-item">
            <img src="<c:url value="../resources/images/First.jpg"/>" alt="Slide3" width="1100" height="500">
            <div class="carousel-caption">
            </div>   
        </div>
    </div>
    <a class="carousel-control-prev" href="#demo" data-slide="prev">
        <span class="carousel-control-prev-icon"></span>
    </a>
    <a class="carousel-control-next" href="#demo" data-slide="next">
        <span class="carousel-control-next-icon"></span>
    </a>
</div>

<section id="newsletter">
    <div class="container">
        <h3>Подтвердите ваш запрос</h3>
        <form>
            <input type="email" name="news" placeholder="Введите запрос..">
            <button type="submit" class="btn btn-danger">Подтвердить</button>
        </form>
    </div>
</section>

<%--============= About Us =================--%>
<section>
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1>Learn With Us</h1>
            <p>Основная цель портала "Учись" - предоставить цифровое пространство для
                школы и студентов. Это веб-приложение обеспечит электронное обучение
                платформу для студентов и школ, чтобы они могли продолжать свое образование
                обучение. Это веб-приложение поддерживается для устранения и уменьшения трудностей
                с которыми сталкиваются школы и студенты, и обеспечить виртуальное взаимодействие между студентами
                и преподавателями.</p>
            <p>
                Learn позволяет школам и учителям управлять классами учеников,
                заданиями и тестами. Это позволит удаленно получить доступ к ученикам, ученики
                могут получить доступ к своему цифровому пространству класса в любое время.   
            </p>
        </div>
    </div>
</section>

<%--============= Service =================--%>
<section id="boxes">
    <div class="container">
        <div class="box">
            <div class="card">
                <img class="card-img-top" src="<c:url value="../resources/images/slide1.jpg"/>" alt="Card image" style="width:100%">
                <div class="card-body">
                    <h4 class="card-title">Образование</h4>
                    <p class="card-text">Learn Предоставляем дистанционную образовательную платформу, которая упрощает процесс обучения.</p>
                    <a href="#" class="btn btn-primary">Читать больше</a>
                </div>
            </div>
        </div>
        <div class="box">
            <div class="card">
                <img class="card-img-top" src="<c:url value="../resources/images/slide1.jpg"/>" alt="Card image" style="width:100%">
                <div class="card-body">
                    <h4 class="card-title">Обучение</h4>
                    <p class="card-text">Платформа Learn Platform делится новым опытом обучения с пользователями простым способом</p>
                    <a href="#" class="btn btn-primary">Читать больше</a>
                </div>
            </div>
        </div>
        <div class="box">
            <div class="card">
                <img class="card-img-top" src="<c:url value="../resources/images/slide1.jpg"/>" alt="Card image" style="width:100%">
                <div class="card-body">
                    <h4 class="card-title">Инновации</h4>
                    <p class="card-text">Одна из лучших платформ для раскрытия инноваций студентов в уникальном виде</p>
                    <a href="#" class="btn btn-primary">Читать больше</a>
                </div>
            </div>
        </div>
        <div class="box">
            <div class="card">
                <img class="card-img-top" src="<c:url value="../resources/images/slide1.jpg"/>" alt="Card image" style="width:100%">
                <div class="card-body">
                    <h4 class="card-title">Рост</h4>
                    <p class="card-text">Учитесь давать образовательные знания и развивать детей уникальным способом</p>
                    <a href="#" class="btn btn-primary">Читать больше</a>
                </div>
            </div>
        </div>    
    </div>
</section>
<div class="container-fluid p-3 bg-dark text-white">
    <div class="container">
        <h1>Онлайн образование</h1>
        <p>Подключайтесь и учитесь вместе с нами. Learn - одна из лучших платформ для онлайн-образования.</p>
    </div>
</div>

<%--============= Footer =================--%>
<%@ include file="student_footer.jsp" %>

