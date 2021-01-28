<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.Profile" %>
<%
Profile pro=(Profile)session.getAttribute("profile");
String name=pro==null?"":pro.getName();
String furigana=pro==null?"":pro.getFurigana();
String emailAdd=pro==null?"":pro.getEmailAdd();
String selfPR=pro==null?"":pro.getSelfPR();
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
<br>
<br>
<div class="container mt-5 pt-4 p-lg-5 bg-light">

    <form class="needs-validation" novalidate action="/workshopHP/FormMain" method="post" enctype="multipart/form-data">
    <div class=" p-2 mb-3 mr-0 bg-info text-white">ワークショップ 申込フォーム</div>
        <!--氏名-->
     <div class="form-group row">
                <label  class="ml-3 mr-3 col-form-label">お名前</label>
                <div class="col-sm-6">
                        <input type="text" name="name" class="form-control" value="<%=name %>" placeholder="例：山田 太郎" required>
                <div class="invalid-feedback">入力してください</div>
            </div>
             </div>
            <div class="form-group row">
                    <label class="ml-3 col-form-label">ふりがな</label>
             <div class="col-sm-6">
                        <input type="text" name="furigana" class="form-control" value="<%=furigana %>" placeholder="例：やまだ たろう" required>
                <div class="invalid-feedback">入力してください</div>
            </div>
         </div>
        <!--/氏名-->
        <!--Eメール-->
        <div class="form-group row">
            <label  class="ml-3 mr-2 col-form-label">Eメール</label>
            <div class="col-sm-6">
                        <input type="email" name="emailAdd" class="form-control" value="<%=emailAdd %>" placeholder="例：chita@mail.com" required>
                <div class="invalid-feedback">入力してください</div>
            </div>
        </div>
        <!--/Eメール-->
                <br>
        <div class="form-group row">
			<label for="imgname" class="ml-3 mr-2 col-form-label">顔写真</label>
			<div class="col-sm-6">
			<input type="file" name="imgname" id="imgname"  class="form-control" >
			<div class="invalid-feedback">入力してください</div>
			</div>
		</div>
        <!--メッセージ-->
        <div class="form-group row">
            <label class="ml-3 mr-2 col-form-label">自己PR</label>
			<div class="col-sm-10">
            <textarea class="form-control" name="selfPR" rows="3"  placeholder="自己PRと演技経験を具体的にお書きください。" required><%=selfPR %></textarea>
            <div class="invalid-feedback">入力してください</div>
			</div>
        </div>
        <!--/メッセージ-->
        <!--ボタンブロック-->
        <div class="form-group row">
            <div class="col-sm-12">
                <button type="submit" class="btn btn-primary btn-block">確認画面へ</button>
            </div>
        </div>
        <!--/ボタンブロック-->

    </form>

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