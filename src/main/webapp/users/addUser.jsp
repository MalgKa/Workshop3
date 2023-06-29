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

        <!--Navbar section-->
        <jsp:include page="header.jsp"/>

        <div class="columns">

            <jsp:include page="sidebar.jsp"/>

            <div class="column is-7">
                <p class="box mytitle has-text-centered">dodaj użytkownika</p>
                <form action="/user/add" method="post" class="mt-3">
                        <div class="field">
                            <label class="label">Nazwa użytkownika</label>
                            <div class="control">
                                <input class="input is-primary" type="text" name="userName" placeholder="wpisz imię i nazwisko">
                            </div>
                        </div>
                    <div class="field">
                        <label class="label">Email</label>
                        <div class="control">
                            <input class="input is-primary" type="text" name="email" placeholder="wpisz email">
                        </div>
                    </div>
                    <div class="field">
                        <label class="label">Hasło</label>
                        <div class="control">
                            <input class="input is-primary" type="text" name="password" placeholder="wpisz hasło">
                        </div>
                    </div>
                    <div class="buttons">
                        <button type="submit" class="button is-primary">zapisz</button>
                        <button class="button is-primary"><a href="/user/list" class="has-text-white">lista użytkowników</a>
                        </button>
                    </div>
                </form>
            </div>

            <div class="column is-2">
                <button class="button is-primary mt-2"><a href="/user/add" class="has-text-white">dodaj użytkownika</a>
                </button>
            </div>
        </div>

        <jsp:include page="footer.jsp"/>
    </div>
</section>
<script src="/theme/js/script.js"></script>
</body>
</html>
