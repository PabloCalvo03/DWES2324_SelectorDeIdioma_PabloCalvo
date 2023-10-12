<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>
		<c:choose>
            <c:when test="${cookie.idioma.value eq 'es'}">Seleccionar Idioma</c:when>
            <c:when test="${cookie.idioma.value eq 'en'}">Select Language</c:when>
            <c:when test="${cookie.idioma.value eq 'fr'}">Sélectionnez la langue</c:when>
            <c:otherwise>Seleccionar Idioma</c:otherwise>
        </c:choose>
	</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <h1 class="text-center mb-4">
                    <c:choose>
                        <c:when test="${cookie.idioma.value eq 'es'}">Seleccionar Idioma</c:when>
                        <c:when test="${cookie.idioma.value eq 'en'}">Select Language</c:when>
                        <c:when test="${cookie.idioma.value eq 'fr'}">Sélectionnez la langue</c:when>                        
                        <c:otherwise>Seleccionar Idioma</c:otherwise>
                    </c:choose>
                </h1>
                <form action="LenguajeSelectorController" method="post">
                    <div class="form-group"> 
                    <c:choose>
                        <c:when test="${cookie.idioma.value eq 'es'}"><label for="idioma">Seleccione su idioma:</label></c:when>
                        <c:when test="${cookie.idioma.value eq 'en'}"><label for="idioma">Select your language</label></c:when>
                        <c:when test="${cookie.idioma.value eq 'fr'}"><label for="idioma">Sélectionnez ton langue</label></c:when>
                        <c:otherwise><label for="idioma">Seleccione su idioma:</label></c:otherwise>
                    </c:choose>
                        <select id="LenguajeSelectorControlelr" name="idioma" class="form-control">
                            <option value="es" <c:if test="${cookie.idioma.value eq 'es'}">selected</c:if>>Español</option>
                            <option value="en" <c:if test="${cookie.idioma.value eq 'en'}">selected</c:if>>English</option>
                            <option value="fr" <c:if test="${cookie.idioma.value eq 'fr'}">selected</c:if>>Frances</option>
                        </select>
                    </div>
                    <br>
                    <div class="text-center">
                    <c:choose>
                        <c:when test="${cookie.idioma.value eq 'es'}"><button type="submit" class="btn btn-primary">Cambiar idioma</button></c:when>
                        <c:when test="${cookie.idioma.value eq 'en'}"><button type="submit" class="btn btn-primary">Change language</button></c:when>
                        <c:when test="${cookie.idioma.value eq 'fr'}"><button type="submit" class="btn btn-primary">Changer la langue</button></c:when>
                        <c:otherwise><button type="submit" class="btn btn-primary">Cambiar idioma</button></c:otherwise>
                    </c:choose>
                    </div>
                </form>
                <br>
                <div class="text-center">
                <c:choose>
                        <c:when test="${cookie.idioma.value eq 'es'}"><a href="JSP/data.jsp" class="btn btn-secondary">Ver Datos</a></c:when>
                        <c:when test="${cookie.idioma.value eq 'en'}"><a href="JSP/data.jsp" class="btn btn-secondary">See data</a></c:when>
                        <c:when test="${cookie.idioma.value eq 'fr'}"><a href="JSP/data.jsp" class="btn btn-secondary">voir les données</a></c:when>
                        <c:otherwise><a href="JSP/data.jsp" class="btn btn-secondary">Ver Datos</a></c:otherwise>
                    </c:choose>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
