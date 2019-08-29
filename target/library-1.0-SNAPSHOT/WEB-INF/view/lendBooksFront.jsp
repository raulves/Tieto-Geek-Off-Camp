<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title></title>



    <!--bootstrap-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!-- stylesheet-->
    <link rel="stylesheet" type="text/css" href="../../stylesheet.css">
    <!-- google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Exo:800|Montserrat:300&display=swap" rel="stylesheet">




</head>



<body>
<img src="https://seeklogo.com/images/T/tieto-logo-5D4F5D3319-seeklogo.com.png">

<div class="row">
    <div class="col-sm-4 spaceAround">
        <div>
            <table>
                <tr>
                    <td align="center">${person.firstName} ${person.surname}</td>
                </tr>
                <tr>

                    <td align="center">${person.email}</td>
                </tr>

            </table>
        </div>
        <div>
            <form action="/app/person/lend" method="get">
                <button class="button-active" type="submit">Lending</button>
            </form>
        </div>
        <div>
            <form action="/app/book/return" method="get">
                <button class="button" type="submit">Returning</button>
            </form>
        </div>
        <div>
            <form action="/app/profile" method="get">
                <button class="button" type="submit">Books</button>
            </form>
        </div>
        <c:if test="${person.role=='admin'}">
            <div>
                <td>
                    <form action="/app/allPersons" method="get">
                        <button class="button" type="submit">All persons</button>
                    </form>
                </td>
            </div>
        </c:if>
        <div>
            <form action="/" method="get">
                <button class="button" type="submit">Log Out</button>
            </form>
        </div>
    </div>



    <div class="col-sm-8 center margin">
        <div>
            <form:form method="POST" action="/app/person/lend" modelAttribute="book">
                <form:errors path="code" class="errors"/>
        </div>
        <div>
            <form:label path="code">Enter barcode</form:label>
        </div>
        <div>
            <form:input path="code" autofocus="true"/>
        </div>
        <div>
            <input class="button" type="submit" value="Lend"/>
            </form:form>
        </div>
    </div>
</div>
<script>
    var elements = document.getElementsByTagName("input");
    for (var ii=0; ii < elements.length; ii++) {
        if (elements[ii].type == "text") {
            elements[ii].value = "";
        }
    }
</script>

</body>
</html>