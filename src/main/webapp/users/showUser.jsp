<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="/theme/css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
    <script src="https://kit.fontawesome.com/125cf097bb.js" crossorigin="anonymous"></script>
</head>

<body>


<section class="section">
    <div class="container box">

        <jsp:include page="header.jsp"/>

        <div class="columns">

            <jsp:include page="sidebar.jsp"/>

            <div class="column is-7">
                <p class="box mytitle has-text-centered">szczegóły użytkownika</p>
                <table class="table ml-auto mr-auto mt-3">
                    <tr>
                        <td>Id</td>
                        <td>${user.id}</td>
                    </tr>
                    <tr>
                        <td>Nazwa użytkownika</td>
                        <td>${user.userName}</td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>${user.email}</td>
                    </tr>
                </table>
            </div>
            <div class="column is-2">
                <button class="button is-primary mt-3"><a href="/user/list" class="has-text-white">lista użytkowników</a>
                </button>
            </div>

        </div>
        <jsp:include page="footer.jsp"/>
    </div>
</section>
</body>

</html>
