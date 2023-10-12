<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>
        <c:choose>
            <c:when test="${cookie.idioma.value eq 'es'}">Datos en español</c:when>
            <c:when test="${cookie.idioma.value eq 'en'}">Data in english</c:when>
            <c:when test="${cookie.idioma.value eq 'fr'}">Données en français</c:when>
            <c:otherwise>Datos en Español</c:otherwise>
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
                        <c:when test="${cookie.idioma.value eq 'es'}">Dato en español</c:when>
                        <c:when test="${cookie.idioma.value eq 'en'}">Data in english</c:when>
                        <c:when test="${cookie.idioma.value eq 'fr'}">Donnée en français</c:when>
                        <c:otherwise>Datos en Español</c:otherwise>
                    </c:choose>
                </h1>

                <div class="text-center">
                    <c:choose>
                        <c:when test="${cookie.idioma.value eq 'es'}">
                            <p>La Gran Muralla China es la estructura más larga jamás construida por el hombre.</p>
                        </c:when>
                        <c:when test="${cookie.idioma.value eq 'en'}">
                            <p>The Great Wall of China is the longest structure ever built by humans.</p>
                        </c:when>
                        <c:when test="${cookie.idioma.value eq 'fr'}">
                            <p>La Grande Muraille de Chine est la structure la plus longue jamais construite par l'homme.</p>
                        </c:when>
                        <c:otherwise>
                            <p>La Gran Muralla China es la estructura más larga jamás construida por el hombre.</p>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
