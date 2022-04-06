<%--============= Header =================--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
    
<%--============= Contact =================--%>
<section id="main">
    <div class="container">
        <c:if test="${not empty sessionScope.message}">
            <div class="alert alert-success">
                <strong>Отзыв отправлен!</strong> ${sessionScope.message}
                <%session.removeAttribute("message"); %>
            </div>
        </c:if>
        <article id="main-col">
            <h1 class="page-title">Learn</h1>
            <ul id="services">
                <li><h3>Наши контакты</h3>
                    <h6><i class="fa fa-envelope"></i>  mylearnportal@gmail.com</h6>
                    <h6><i class='fa fa-phone'></i>  +375(29)290-80-75</h6>
                </li>
                <li><h3>найдите нас</h3>
                    <h6><i class="fa fa-map-marker"></i>  Адрес 1</h6>
                    <h6><i class="fa fa-address-card"></i>  Адрес 2</h6>
                    <h6><i class="fa fa-map"></i>  Город - индекс</h6>
                </li>			
            </ul>
        </article>
        <aside id="sidebar">
            <div class="dark mt-4">
                <h3>Отзыв</h3>
                <form action="savefeedback" method="POST" class="quote">
                    <div>
                        <label>Имя</label>
                        <input type="text" name="name" placeholder="Имя">
                    </div>
                    <div>
                        <label>Почта</label>
                        <input type="email" name="email" placeholder="Почта">
                    </div>
                    <div>
                        <label>Сообщение</label>
                        <textarea placeholder="Сообщение.." name="message"></textarea> 
                    </div>
                    <input class="button1" type="submit" value="Сохранить">
                </form>
            </div>
        </aside>	
    </div>
</section>
    
<%--============= Footer =================--%>
<%@ include file="footer.jsp" %>