<%--================ Header ===================--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@include file="faculty_header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

<%--================ View Material ===================--%>
<center class="container">
    <h3>МАТЕРИАЛЫ</h3>
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
                <th>Среда</th>
                <th>Предмет</th>
                <th>Тема</th>
                <th>Файл</th>
                <th>Просмотреть</th>
                <th>Удалить</th>
            </tr>
        </thead>
        <tbody>  
            <c:set var="i" value="1" scope="page" />
            <c:forEach var="material" items="${list}">   
                <tr>  
                    <td>${i}</td> 
                    <c:set var="i" value="${i + 1}" scope="page"/>
                    <td>${material.standard}</td>
                    <td>${material.medium}</td>
                    <td>${material.subject}</td>
                    <td>${material.topic}</td>
                    <td>${material.filename}</td>
                    <td><button class="btn btn-info" data-toggle="modal" data-file="<c:url value="../resources/upload-material/${material.filename}"/>" data-target="#myModal">Посмотреть</button></td>
                    <td><a href="deletematerial?id=${material.id}" class="btn btn-danger" onclick="return confirm('Вы хотите удалить?')">Удалить</a></td>
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
                <h4 class="modal-title">Material</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>  
            <!-- Modal body -->
            <div class="modal-body">
                <div class="form-group">
                    <label>Document</label>
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
        $(this).find("#file").attr("src",file);
    });
</script>

<%--================ Footer ===================--%>
<%@ include file="footer.jsp" %>  

