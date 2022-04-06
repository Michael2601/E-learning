<%--============= Header =================--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<%--============= Carousel =================--%>
<div id="demo" class="carousel slide" data-ride="carousel">
    <ul class="carousel-indicators">
        <li data-target="#demo" data-slide-to="0" class="active"></li>
        <li data-target="#demo" data-slide-to="1"></li>
        <li data-target="#demo" data-slide-to="2"></li>
    </ul>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="<c:url value="resources/images/4.jpg"/>" alt="Slide1" width="1100" height="500">
            <div class="carousel-caption">
                
            </div>   
        </div>
        <div class="carousel-item">
            <img src="<c:url value="resources/images/Second.jpg"/>" alt="Slide2" width="1100" height="500">
            <div class="carousel-caption">
                
            </div>   
        </div>
        <div class="carousel-item">
            <img src="<c:url value="resources/images/First.jpg"/>" alt="Slide3" width="1100" height="500">
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

<%--============= Newsletter =================--%>
<section id="newsletter">
    <div class="container">
        <h3>Подпишись на наши новостные обновления</h3>
        <form>
            <input type="email" name="news" placeholder="Введите почту..">
            <button type="submit" class="btn btn-danger">Подпишись</button>
        </form>
    </div>
</section>

<%--============= About Us =================--%>
<section>
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1>Обучайся вместе с нами</h1>
            <p>Основной целью портала Learn является предоставление цифрового пространства для
                Учебных организаций и учащихся. Это веб-приложение разрабатывалось для устранения и уменьшения трудностей
                с которыми сталкиваются учебные организации и учащиеся. Приложение обеспечивает виртуальное взаимодействие между учащимися и учителями.</p>
            <p>
                Learn позволяет школам и учителям управлять классами учащихся,
                заданиями и тестами-викторинами. Это позволит удаленно получить доступ к студентам, студентам
                может получить доступ к своему цифровому классу в любое время. 
            </p>
        </div>
    </div>
</section>

<%--============= Service =================--%>
<section id="boxes">
    <div class="container">
        <div class="box">
            <div class="card">
                <img class="card-img-top" src="<c:url value="resources/images/slide1.jpg"/>" alt="Card image" style="width:100%">
                <div class="card-body">
                    <h4 class="card-title">Образование</h4>
                    <p class="card-text">Learn предоставляет удаленную образовательную платформу, которая облегчает обучение.</p>
                    <a href="#" class="btn btn-primary">Читать больше</a>
                </div>
            </div>
        </div>
        <div class="box">
            <div class="card">
                <img class="card-img-top" src="<c:url value="resources/images/slide1.jpg"/>" alt="Card image" style="width:100%">
                <div class="card-body">
                    <h4 class="card-title">Обучение</h4>
                    <p class="card-text">Платформа Learn Легко предоставляет новый опыт обучения для своих пользователями</p>
                    <a href="#" class="btn btn-primary">Читать больше</a>
                </div>
            </div>
        </div>
        <div class="box">
            <div class="card">
                <img class="card-img-top" src="<c:url value="resources/images/slide1.jpg"/>" alt="Card image" style="width:100%">
                <div class="card-body">
                    <h4 class="card-title">Инновации</h4>
                    <p class="card-text">Одна из лучших платформ для демонстрации студенческих инноваций</p>
                    <a href="#" class="btn btn-primary">Читать больше</a>
                </div>
            </div>
        </div>
        <div class="box">
            <div class="card">
                <img class="card-img-top" src="<c:url value="resources/images/slide1.jpg"/>" alt="Card image" style="width:100%">
                <div class="card-body">
                    <h4 class="card-title">Рост</h4>
                    <p class="card-text">Learn обеспечит образовательные знания учащихся уникальным способом</p>
                    <a href="#" class="btn btn-primary">Читать больше</a>
                </div>
            </div>
        </div>    
    </div>
</section>
<div class="container-fluid p-3 bg-dark text-white">
    <div class="container">
        <h1>Онлайн образование</h1>
        <p>Общайтесь и учитесь вместе с нами. Learn - одна из лучших платформ для онлайн-образования.</p>
    </div>
</div>

<%--============= Footer =================--%>
<%@ include file="footer.jsp" %>
