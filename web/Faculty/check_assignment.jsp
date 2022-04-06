<%--================ Header ===================--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@include file="faculty_header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
    
<%--================ Check Assignment ===================--%>
<a href="review" class="btn btn-success m-3">Назад</a>    
<center class="container">
    <h3>Проверка задания</h3>
</center>
<div class="col-lg-12 p-3">
    <c:if test="${not empty sessionScope.error}">
        <div class="alert alert-danger">
            <strong>Ошибка !</strong> ${sessionScope.error}
            <%session.removeAttribute("error"); %>
        </div>
    </c:if>
    <c:if test="${not empty sessionScope.message}">
        <div class="alert alert-success">
            <strong>Успех !</strong> ${sessionScope.message}
            <%session.removeAttribute("message"); %>
        </div>
    </c:if>
    <table id="myTable" class="display">
        <thead>
            <tr>
                <th>Идентификатор</th>
                <th>Стандарт</th>
                <th>Предмет</th>
                <th>Тема</th>
                <th>Имя учащегося</th>
                <th>Дата предоставления</th>
                <th>Статус</th>
                <th>Коментарии</th>
                <th>Просмотреть</th>
                <th>Скачать</th>
            </tr>
        </thead>
        <tbody>
            <c:set var="i" value="1" scope="page" />
            <c:forEach var="assign" items="${list}">   
                <tr>  
                    <td>${i}</td>
                    <c:set var="i" value="${i + 1}" scope="page"/>
                    <td>${assign.std}</td>
                    <td>${assign.subject}</td>
                    <td>${assign.topic}</td>
                    <td>${assign.name}</td>
                    <td>${assign.submitdate}</td>
                    <td><c:if test="${assign.status == 0}"><span class="text-primary">Представлено</span></c:if>
                        <c:if test="${assign.status == 1}"><span class="text-success">Проверено</span></c:if> 
                        </td>
                        <td>${assign.remarks}</td>
                    <td><button class="btn btn-info" data-toggle="modal" data-val="${assign.id}" data-file="<c:url value="../resources/upload-assignments/${assign.filename}"/>" data-target="#myModal">Посмотреть</button></td>
                    <td><a class="btn btn-success" href="downloadassign?filename=${assign.filename}">Скачать</a></td>
                </tr>  
            </c:forEach>   
        </tbody>
    </table>
</div>
<%--================ View Material Modal ===================--%>
<!-- The Modal -->
<div class="modal" id="myModal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">Проверить задания</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>  
            <!-- Modal body -->
            <div class="modal-body">
                <form action="addremarks" method="POST" class="quote">
                    <input type="hidden" name="id" id="assignid" value="">
                    <div class="form-group">
                        <label>Добавьте коментарии</label>
                        <input type="text" name="remarks" class="form-control" placeholder="Коментарий.." required="">
                    </div>
                    <input class="btn btn-info" type="submit" value="Пометить провереным">
                </form>
                <div class="form-group">
                    <label></label>
                    <div class="embed-responsive embed-responsive-4by3" id="document">
                        <iframe class="embed-responsive-item" src="file" id="file" allowfullscreen></iframe>
                    </div>
                </div>
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
        var file = $(event.relatedTarget).data('file');
        var id = $(event.relatedTarget).data('val');
        $(this).find("#file").attr("src",file);
        $(this).find("#assignid").val(id);
    });
</script>
    
<%--================ Footer ===================--%>  
<%@ include file="footer.jsp" %>