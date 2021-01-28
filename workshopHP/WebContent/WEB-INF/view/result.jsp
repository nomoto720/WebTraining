<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Profile" %>
<%
Profile pro=(Profile)session.getAttribute("profile");
%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>お申込フォーム</title>



 	 <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
</head>
<body>
   <!-- Navigation-->
        <nav class="navbar navbar-expand-lg bg-info  fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="/workshopHP/Main">Workshop Studio</a>
            </div>
        </nav>
        <!-- Masthead-->
<!-- Page Content -->
<br>
<br>
<div class="container mt-5 pt-4 p-lg-5 bg-light">

    <form class="needs-validation" novalidate action="/workshopHP/Create" method="post">
    <div class=" p-2 mb-3 mr-0 bg-info text-white">確認画面</div>
        <!--氏名-->
     <div class="form-group row">
                <label  class="font-weight-bold ml-3 mr-3 col-form-label">お名前</label>
                <div class="col-sm-6">
                        <input type="hidden" name="name" class="form-control">
                        <p class="mt-2"><%=pro.getName() %></p>
            </div>
             </div>
            <div class="form-group row">
                    <label class="font-weight-bold ml-3 col-form-label">ふりがな</label>
             <div class="col-sm-6">
                        <input type="hidden" name="furigana" class="form-control">
                        <p class="mt-2"><%=pro.getFurigana() %></p>
            </div>
         </div>
        <!--/氏名-->

        <!--Eメール-->
        <div class="form-group row">
            <label  class="font-weight-bold ml-3 mr-2 col-form-label">Eメール</label>
            <div class="col-sm-6">
                        <input type="hidden" name="emailAdd" class="form-control">
						<p class="mt-2"><%=pro.getEmailAdd() %></p>
            </div>
        </div>
        <!--/Eメール-->
                <br>

        <!--/ファイル選択-->

        <div class="form-group row">
			<label for="imgname" class="ml-3 mr-2 col-form-label">顔写真</label>
			<div class="col-sm-6">
			<input type="hidden" name="imgname" id="imgname" class="form-control" >
			<img src="upload/<%=pro.getImgname() %>">
			</div>
		</div>


        <!--メッセージ-->
        <div class="form-group row">
            <label class="font-weight-bold ml-3 mr-2 col-form-label">自己PR</label>
			<div class="col-sm-10">
            <input type="hidden" name="selfPR" class="form-control">
            <p class="mt-2"><%=pro.getSelfPR() %></p>
			</div>
        </div>
        <!--/メッセージ-->
        <!--ボタンブロック-->
        <div class="form-group row">
            <div class="col-sm-12">
                <button type="submit" class="btn btn-primary btn-block">送信</button>

            </div>
        </div>

        <!--/ボタンブロック-->

    </form>
        <div class="form-group row">
            <div class="col-sm-12">
                <button onclick="location.href='/workshopHP/FormMain'" class="btn btn-info btn-block">修正する</button>
            </div>
        </div>



</div><!-- /container -->

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
<!-- 郵便番号から住所自動入力 -->
<script src="https://ajaxzip3.github.io/ajaxzip3.js" charset="UTF-8"></script>
<!-- Validation -->
<script>

    // 無効なフィールドがある場合にフォーム送信を無効にするスターターJavaScriptの例
    (function() {
        'use strict';

        window.addEventListener('load', function() {
            // カスタムブートストラップ検証スタイルを適用するすべてのフォームを取得
            var forms = document.getElementsByClassName('needs-validation');
            // ループして帰順を防ぐ
            var validation = Array.prototype.filter.call(forms, function(form) {
                // submitボタンを押したら以下を実行
                form.addEventListener('submit', function(event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        }, false);
    })();
</script>
</body>
</html>