<%--============= Header =================--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<center>
    <h2>Извинете, проблема с сервером!</h2>
    <h3>Ваше действие не выполнено. Обратитесь к администратору</h3>
    <h3>${exception.message}</h3>
</center>
<%--============= Footer =================--%>
<%@ include file="footer.jsp" %>
