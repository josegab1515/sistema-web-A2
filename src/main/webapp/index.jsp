<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<%
    int[] valores = {1, 2, 3, 4, 5};
    request.setAttribute("valores", valores);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Teste</title>
</head>
<body>
    <h1>Hello World!!</h1>

    <%
        for (int i = 0; i < 5; i++) {
            out.println(valores[i]);
            out.println("<br />");
        }
    %>

    <h2>Outro código com JSTL</h2>
    <c:forEach var="item" items="${valores}">
        ${item} <br />
    </c:forEach>

</body>
</html>
