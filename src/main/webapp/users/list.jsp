
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

<!--columns section-->
<section class="section">
    <div class="container box">

        <!--Navbar section-->
        <jsp:include page="header.jsp"/>

        <div class="columns">

            <jsp:include page="sidebar.jsp"/>

            <div class="column is-7">
                <p class="box mytitle has-text-centered">lista użytkowników</p>
                <table class="table ml-auto mr-auto is-striped">
                    <thead>
                    <tr>
                        <th>Id</th>
                        <th>Nazwa Użytkownika</th>
                        <th>Email</th>
                        <th>Akcja</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${users}" var="user">
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.userName}</td>
                            <td>${user.email}</td>

                            <td>
                                <div class="buttons">
                                    <button class="button is-primary is-light"><a
                                            href="/user/delete?id=${user.id}">usuń<i class="fa-sharp fa-solid fa-user-minus ml-2"></i></a></button>
                                    <button class="button is-primary is-light"><a
                                            href="/user/edit?id=${user.id}">zmień<i class="fa-solid fa-user-pen ml-2"></i></a></button>
                                    <button class="button is-primary is-light"><a
                                            href="/user/show?id=${user.id}">pokaż<i class="fa-solid fa-eye ml-2"></i></a></button>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="column is-2">
                <button class="button is-primary mt-3"><a href="/user/add" class="has-text-white">dodaj użytkownika</a>
                </button>
            </div>
        </div>
        <jsp:include page="footer.jsp"/>
    </div>
</section>
</body>

<script src="/theme/js/script.js"></script>
</html>