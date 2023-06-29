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
                                <div class="dropdown is-hoverable">
                                    <div class="dropdown-trigger">
                                        <button class="button is-success" aria-haspopup="true"
                                                aria-controls="dropdown-menu">
                                            <span>opcje</span>
                                            <span class="icon is-small">
                                                <i class="fas fa-angle-down" aria-hidden="true"></i>
                                            </span>
                                        </button>
                                    </div>
                                    <div class="dropdown-menu" id="dropdown-menu" role="menu">
                                        <div class="dropdown-content">
                                            <a href="/user/delete?id=${user.id}" class="dropdown-item">
                                                usuń
                                            </a>
                                            <a href="/user/edit?id=${user.id}" class="dropdown-item">
                                                zmień
                                            </a>
                                            <a href="/user/show?id=${user.id}" class="dropdown-item">
                                                pokaż
                                            </a>

                                        </div>
                                    </div>
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