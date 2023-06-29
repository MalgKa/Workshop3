
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<nav class="navbar has-shadow is-white">
  <div class="navbar-brand">
    <p class="has-text-weight-bold is-size-1 has-text-success-dark">UsersCRUD</p>
  </div>
<div class="navbar-menu" id="nav-links">
    <div class="navbar-end">
        <button class="navbar-item button is-danger has-text-white" id="removeAll"><i class="fa-solid fa-trash-can mr-2"></i>usuń całą listę</button>
    </div>
</div>
</nav>

<div class="modal">
    <div class="modal-background"></div>
    <div class="modal-content has-background-white py-5 px-5">
        <h1 class="title mb-6 has-text-centered">Czy chcesz usunąć całą listę ?</h1>
        <div class="buttons is-justify-content-space-between">
        <button class="button is-danger" id="isDanger">
            <div class="is-inline">
                <img src="/theme/images/trash2.png">
            </div>
            <p class="is-inline ml-2">TAK, chcę usunąć</p>
        </button>
        <button class="button is-dark" id="rejection">
            <p class="is-inline">NIE</p>
            <div class="is-inline">
                <img src="/theme/images/reuse.png" alt="">
            </div>
        </button>
        </div>
    </div>
</div>

<script src="/theme/js/script.js"></script>
</body>
</html>
