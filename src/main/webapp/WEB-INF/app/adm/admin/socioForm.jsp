<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title> Socios </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <%@include file="/public/header.jsp" %>
    </head>
    <body>
        <%@include file="/public/menuGeneral.jsp" %>

        <div class="container-fluid">
            <div class="row-fluid">
                <%@include file="/public/menuAdm.jsp" %>
                <div class="span9">
                    <div class="row">
                        <h1> Nuevo Socio </h1>
                    </div>

                    <form action="<%=contextPath%>/adm/socio/save" method="POST" class="form-horizontal" id="socioForm">

                        <input type="hidden" value="${socio.id}" name="id">

                        <div class="control-group">
                            <label class="control-label">Nombres</label>
                            <div class="controls">
                                <input type="text" name="nombres" value="${socio.nombres}">
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label">Apellido Paterno</label>
                            <div class="controls">
                                <input type="text" name="paterno" value="${socio.paterno}">
                            </div>
                        </div>


                        <div class="control-group">
                            <label class="control-label">Apellido Materno</label>
                            <div class="controls">
                                <input type="text" name="materno" value="${socio.materno}">
                            </div>
                        </div>


                        <div class="control-group">
                            <label class="control-label">Email</label>
                            <div class="controls">
                                <input type="text" name="email" value="${socio.email}">
                            </div>
                        </div>


                        <div class="control-group">
                            <label class="control-label">Celular</label>
                            <div class="controls">
                                <input type="text" name="celular" value="${socio.celular}">
                            </div>
                        </div>


                        <div class="control-group">
                            <label class="control-label">Dirección</label>
                            <div class="controls">
                                <input type="text" name="direccion" value="${socio.direccion}">
                            </div>
                        </div>

                        <div class="control-group">
                            <div class="controls">
                                <a class="btn" href="<%=contextPath%>/adm/socio">Cancelar</a>
                                <button type="submit" class="btn btn-primary">Guardar</button>
                            </div>
                        </div>
                    </form>


                </div>
            </div>
            <hr>
        </div>
        <%@include file="/public/footer.jsp" %>
        
        
        <script>
            $(function() {
                $('#socioForm').validate({
                    rules: {
                        nom: {required: true},
                        clave: {required: true}
                    },
                    
                    
                    highlight: function(element) {
                        $(element).closest('.control-group').removeClass('success').addClass('error');
                    },
                    success: function(element) {
                        element
                                .text('OK!').addClass('valid')
                                .closest('.control-group').removeClass('error').addClass('success');
                    }
                    
                });
            });

        </script>
        
        
        
    </body>
</html>