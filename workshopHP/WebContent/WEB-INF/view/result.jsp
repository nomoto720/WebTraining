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
         <!--性別--><%--
        <div class="form-group row   ">
                <label class="ml-3 mr-3 col-form-label ">性　別</label>
                <div class="col-sm-10 mt-2">
                    <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio"  name="gender" class="custom-control-input" required>
                        <label class="custom-control-label" for="customRadioInline1">女性</label>
                    </div>
                    <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio"  name="gender" class="custom-control-input">
                        <label class="custom-control-label" for="customRadioInline2">男性</label>
                    </div>
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio"  name="gender" class="custom-control-input">
                        <label class="custom-control-label" for="customRadioInline3">その他</label>
                    </div>
                </div>

        </div>
       --%> <!--/性別-->
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
        <!--住所-->
<%--
       <div class="form-group row">
            <label class="ml-3 col-form-label">郵便番号</label>
            <div class="col-sm-3">
                        <input type="text" name="inputAddress01" maxlength="8" class="form-control" placeholder="例：1030013" required>
                <div class="invalid-feedback">入力してください</div>
            </div>
        </div>
        <div class="form-group row">
            <label class="ml-3 col-form-label">都道府県</label>
            <div class="col-sm-3">
                        <input type="text" name="inputAddress02" class="form-control" placeholder="例：東京都" required>
                <div class="invalid-feedback">入力してください</div>
            </div>
        </div>
        <div class="form-group row">
            <label class="ml-3 mr-3 col-form-label">住　所</label>
             <div class="col-sm-10">
                        <input type="text" name="inputAddress03" class="form-control" placeholder="例：中央区日本橋人形町" required>
                <div class="invalid-feedback">入力してください</div>
            </div>
        </div>
        <!--/住所-->
        <!--お問い合わせ先-->
        <div class="form-group row">
            <label class="ml-3  col-form-label">電話番号</label>
            <div class="col-sm-4">
                        <input type="tel" class="form-control" name="inputTell" size="12" maxlength="20"  placeholder="例：03-123-4567" required>
                <div class="invalid-feedback">入力してください</div>
            </div>
        </div>
        <!--/お問い合わせ先-->
                <br>
        <!--営業時間1-->
        <div class="form-group row ">
            <label class="col-form-label ml-3 mr-3">職　業</label>
            <div class="col-sm-8">
                <select name="profession" class="form-control" required>>
                    <option value="会社員">会社員</option>
                    <option value="会社員/一般事務職">会社員/一般事務職</option>
                    <option value="会社員/営業・販売・サービス">会社員/営業・販売・サービス業</option>
                    <option value="会社員/コンピューター・技術開発職">会社員/コンピューター・技術開発職</option>
                    <option value="専門職">専門職</option>
                    <option value="専門事務職">専門事務職</option>
                   <option value="主婦・主夫">主婦・主夫</option>
                   <option value="学生">学生</option>
                    <option value="派遣社員">派遣社員</option>
                   <option value="アルバイト・パート">アルバイト・パート</option>
                    <option value="映画・テレビ">映画・テレビ</option>
                    <option value="編集・出版">編集・出版</option>
                   <option value="フリー・クリエイティブ">フリー・クリエイティブ職</option>
                    <option value="公務員・団体職員">公務員・団体職員</option>
                    <option value="自営業">自営業</option>
                    <option value="無職">無職</option>
                      <option value="その他">その他</option>
                </select>
                <div class="invalid-feedback">
                    入力してください
                </div>
            </div>
        </div>
		<!-- 所属事務所-->
		 <div class="form-group row">
            <label  class="ml-3 col-form-label">所属事務所(ある方のみ)</label>
            <div class="col-sm-6">
                        <input type="text" name="office" class="form-control" placeholder="例：所属なし" required>
            </div>
        </div>
		<!--/所属事務所-->
		<!--所属事務所電話番号 -->
		 <div class="form-group row">
            <label class="ml-3 mr-4 col-form-label">所属事務所 電話番号</label>
            <div class="col-sm-4">
                        <input type="tel" class="form-control" name="officeTell" size="12" maxlength="20"  placeholder="例：03-123-4567" required>
            </div>
        </div>

 <div class="form-group row">
        <label class=" ml-3 mr-3 col-form-label">演技経験</label>
<div class="mt-2 ">
                <input type="checkbox" name="acting[]" value="月曜日" >なし
				<input type="checkbox" class="ml-2" name="acting[]" value="水曜日">舞台
                <input type="checkbox" class="ml-2" name="acting[]" value="火曜日">映画
                <input type="checkbox" class="ml-2" name="acting[]" value="水曜日">テレビ
               <input type="checkbox" class="ml-2" name="acting[]" value="水曜日">その他
</div>
</div>

        <!--ファイル選択-->
	<div class="form-group row">
		 <label class="ml-3 mr-2 col-form-label">顔写真ファイル</label>
      	<div class="col-sm-6">
            <input type="file" class="custom-file-input pb-3" name="faceFile" required>
            <label class="custom-file-label pb-3" for="customFile">ファイル選択...</label>
            <div class="invalid-feedback">ファイルを選択してください</div>
        </div>
		</div>
        <!--/ファイル選択-->
        --%>

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