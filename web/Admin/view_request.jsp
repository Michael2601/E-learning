<%--================ Header ===================--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<%--============== View Request =================--%>
<center class="container">
    <h3>НОВЫЕ ЗАПРОСЫ</h3>
</center>

<div class="container-fluid pb-3">
    <c:if test="${not empty sessionScope.message}">
        <div class="alert alert-success">
            <strong>Approved !</strong> School Request is approved.
            <%session.removeAttribute("message"); %>
        </div>
    </c:if>
    <c:if test="${not empty sessionScope.mailstatus}">
        <div class="alert alert-info">
            <strong>Mail Sent !</strong> ${sessionScope.mailstatus}
            <%session.removeAttribute("mailstatus"); %>
        </div>
    </c:if>
    
    <table id="myTable" class="display">
        <thead>
            <tr>
                <th>Идентификатор организации</th>
                <th>Наименование организации</th>
                <th>Управляющий</th>
                <th>Регистрационный номер</th>
                <th>Стандарт</th>
                <th>Среда</th>
                <th>Адрес</th>
                <th>Почта</th>
                <th>Контактный номер</th> 
                <th>Подтвердить</th>
                <th>Удалить</th>
            </tr>
        </thead>
        <tbody>
            <c:set var="i" value="1" scope="page" />   
            <c:forEach var="school" items="${list}">   
                <tr>  
                    <td>${i}</td>
                    <c:set var="i" value="${i + 1}" scope="page"/>
                    <td>${school.name}</td>
                    <td>${school.ownername}</td>
                    <td>${school.registerno}</td>
                    <td>${school.standard}</td>
                    <td>${school.medium}</td>
                    <td>${school.address}</td>
                    <td>${school.email}</td>
                    <td>${school.contactno}</td>
                    <td><a class="btn btn-primary" href="approve?id=${school.id}&email=${school.email}&name=${school.ownername}&schoolname=${school.name}">Подтвердить</a></td>
                    <td><button class="btn btn-danger" data-toggle="modal" data-val="${school.id}" data-email="${school.email}" data-schoolname="${school.name}" data-target="#myModal">Отказать</button></td>
                </tr>  
            </c:forEach>   
        </tbody>
    </table>
    
    <%--================ Reject Modal ===================--%>
    <!-- The Modal -->
    <div class="modal" id="myModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Отказ</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>  
                <!-- Modal body -->
                <div class="modal-body">
                    <form action="sendEmail" method="POST" class="quote">
                        <input type="hidden" name="id" id="schoolid" value="">
                        <input type="hidden" name="schoolname" id="schoolname" value="">
                        <div class="form-group">
                            <label>Почта</label>
                            <input type="email" name="recipient" id="email" class="form-control" placeholder="Почта" required="">
                        </div>
                        <div class="form-group">
                            <label>Тема</label>
                            <input type="text" name="subject" class="form-control" placeholder="Тема" required="">
                        </div>
                        <div class="form-group">
                            <label>Причина</label>
                            <textarea placeholder="Причина отказа.."  class="form-control" name="message" required=""></textarea> 
                        </div>
                        <input class="btn btn-info" type="submit" value="Отправить">
                    </form>
                </div>    
                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Закрыть</button>
                </div>        
            </div>
        </div>
    </div>
    <!--! The Modal -->
</div>
<script>
    $('#myModal').on('show.bs.modal', function(event) {
        var id = $(event.relatedTarget).data('val');
        var schoolname = $(event.relatedTarget).data('schoolname');
        var email=$(event.relatedTarget).data('email');
        console.log(id);
        $(this).find("#email").val(email);
        $(this).find("#schoolid").val(id);
        $(this).find("#schoolname").val(schoolname);
    });
</script>
<%--================ Footer ===================--%>
<%@ include file="footer.jsp" %>  

