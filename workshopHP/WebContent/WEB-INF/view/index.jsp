<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Freelancer - Start Bootstrap Theme</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg bg-info  fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top">Workshop Studio</a>
                <button class="navbar-toggler navbar-toggler-right  text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#about">WSについて</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#portfolio">講師紹介</a></li>
						 <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#course">コース紹介</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#contact">お問い合わせ</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead">
            <div class="topBox  text-white">
				<br><br><br>
                <h1>Workshop Studio</h1>
				<p class="topFont">映像演技のためのワークショップ<p>
            </div>
        </header>

        <!-- About Section-->
        <section class="page-section  mb-0" id="about">
            <div class="bg-white pt-5 pb-5 container">
                <!-- About Section Heading-->
                <h2 class="text-center">ABOUT</h2>
				<p class="text-center sabTitle">WSについて</p>
                <!-- About Section Content-->
                <p class="aboutFont">映画俳優をめざす人のための短期集中の俳優ワークショップです。
					映画業界で活躍する監督による、具体的な演技指導をたっぷり受けられます。
					映像にうつることを客観的に知るために実際に短編映画を作り、
					画面を通して演技がどううつるかまでを体験して頂けます。</p>
            </div>
        </section>
        <!-- Portfolio Section-->
        <section class="page-section portfolio" id="portfolio">
            <div class="container bg-white pt-5 pb-5">
                <!-- Portfolio Section Heading-->
                <h2 class=" text-center  text-secondary">LECTURER</h2>
				<p class="text-center sabTitle mb-4">講師紹介</p>
                <!-- Portfolio Grid Items-->
                <div class="row justify-content-center">
                    <!-- Portfolio Item 1-->
                    <div class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal1">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="images/kawasaki.jpg" alt="kawasaki" />
							</div>
							<p class="profile text-center mt-2 text-dark">川崎 僚</p>
							<p class="text-center bg-info text-white pt-1 pb-1">映画監督・脚本家</p>
						<p class="text-muted mb-1">『Eggs 選ばれたい私たち』</p>
						<p class="text-muted mb-1">『あなたみたいに、なりたくない。』</p>
						<p class="text-muted">『SEASON OFWOMAN』</p>
                    </div>
                    <!-- Portfolio Item 2-->
                    <div class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal2">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="images/kozue.jpg" alt="" />
							</div>
							<p class="profile text-center mt-2 ">山本 梢</p>
							<p class="text-center bg-info text-white pt-1 pb-1">映画監督</p>
						<p class="text-muted mb-1">『愛のくだらない』</p>
						<p class="text-muted mb-1">『次は何に生まれましょうか』</p>
						<p class="text-muted">『私は渦の底から』</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- course Section-->
        <section class="page-section  mb-0" id="course">
            <div class="container bg-white pt-5 pb-5 pr-5 pl-5">
                <!-- About Section Heading-->
                <h2 class="text-center">CORSE</h2>
				<p class="text-center sabTitle mb-4">コース紹介</p>
                <!-- About Section Content-->
				<p class="aboutFont">映画俳優をめざす人のための短期集中の俳優ワークショップです。
				2日間通しのプログラムの中で初日は演者の皆様を知る事にお時間を頂き、翌日はそのイメージを踏まえて当て書きさせて頂く
				台本を使用して演出をさせて頂きます。それぞれ2人の監督のコースを用意してあります。</p>
            </div>
			<div class="container mt-5">
			<table class="bg-white table table-bordered ">
				<tbody>
					<tr height="67">
						<th class="align-middle bg-info text-white" scope="col">日数</th>
						<td class="align-middle" >2日間のプログラム</th>
					</tr>
					<tr height="67">
						<th class="bg-info text-white" scope="row">時間</th>
						<td class="align-middle">1日目 13:00~18:00<br>
							2日目 9:00~15:00</td>
					</tr>
					<tr height="67">
						<th class="bg-info text-white" scope="row">受講資格</th>
						<td class="align-middle">・16歳以上の方（未成年の方は保護者様の同意を得た上でお申込み下さい）<br>
						・事務所等に所属されている場合、所属先へご確認の上お申込み下さい。</td>
					</tr>
					<tr height="67">
						<th class="bg-info text-white" scope="row">受講料</th>
						<td class="align-middle">20,000円（初めての方）<br>
						16,000円（過去受講者割引）</td>
					</tr>
					<tr height="67">
						<th class="bg-info text-white" scope="row">定員</th>
						<td class="align-middle">12名程度（締切後に、監督による書類選考がございます）</td>
					</tr>
					<tr height="67">
						<th class="bg-info text-white" scope="row">会場</th>
						<td class="align-middle">新宿<br>
						※参加者の方には詳しい場所を追ってお知らせ致します。</td>
					</tr>
				</tbody>
			</table>
			</div>
			<h2 class=" text-center bg-info mt-5 pt-4 pb-4 text-white">お申込方法</h2>
			<div class="container bg-white mt-4 mb-2 pt-5 pb-4 pr-5 pl-5">
							<p class="appTitle text-center font-weight-bold"><span class="text-info h2">１ </span>お申込みフォームから応募</p>
				<p class="text-center mt-3">※応募締切 4月29日23時まで</p>
				<div class="text-center"><button class="btn btn-primary btn-xl" id="sendMessageButton" onclick="location.href='/workshopHP/FormMain'" >お申込フォーム ＞</button></div>
			</div>
			<p class="text-center h3 text-info font-weight-bold">↓</p>
			<div class="container bg-white mt-2 mb-2 pt-5 pb-4 pr-5 pl-5">
				<p class="appTitle text-center"><span class="text-info h2 font-weight-bold">２ </span>書類審査</p>
				<p class="text-center mt-3">書類審査の上、結果をメールにて通知します。</p>
				<p class="text-center">※選考結果の理由についてはお答え出来ませんのでご了承ください。</p>
			</div>
			<p class="text-center h3 text-info font-weight-bold">↓</p>
			<div class="container bg-white mt-2 mb-2 pt-5 pb-4 pr-5 pl-5">
				<p class="appTitle text-center"><span class="text-info h2 font-weight-bold">３ </span>受講料のお支払い</p>
				<p class="text-center mt-3">通過通知を受けとった方は、コース費用を指定の銀行口座に指定の期日までにお振込ください。
				追って講座の詳細をお送りします。</p>
			</div>
        </section>
		<section class="page-section  mb-0" id="contact">
		<div class="container">
		<!-- Contact Section Form-->
		<div class="container p-lg-5 bg-light ">
		<!-- Contact Section Heading-->
                <h2 class="text-center">CONTACT</h2>
				<p class="text-center sabTitle mb-4">お問合せ</p>
    <form class="needs-validation" novalidate action="result.jsp" method="post">
	<!--氏名-->
     <div class="form-group row">
                <label  class="ml-3 mr-4 col-form-label">お名前</label>
                <div class="col-sm-6">
                        <input type="text" name="name" class="form-control" placeholder="例：山田 太郎" required>
                <div class="invalid-feedback">入力してください</div>
            </div>
             </div>

        <!--/氏名-->
        <!--Eメール-->
        <div class="form-group row">
            <label  class="ml-3 mr-3 col-form-label">Eメール</label>
            <div class="col-sm-6">
                        <input type="email" name="emailAdd" class="form-control" placeholder="例：example@mail.com" required>
                <div class="invalid-feedback">入力してください</div>
            </div>
        </div>
        <!--/Eメール-->
        <!--メッセージ-->
        <div class="form-group row">
            <label class="ml-3 col-form-label">メッセージ</label>
			<div class="col-sm-9">
            <textarea class="form-control" id="Textarea" rows="3" placeholder="その他、質問などありましたら" required></textarea>
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
            </div>
        </section>
        <!-- Footer-->
        <footer class="bg-info footer text-center">
            <div class="container">
                <div class="row">
                    <!-- Footer Location-->
                    <div class="col-lg-4 mb-5 mb-lg-0">
                    </div>
                    <!-- Footer Social Icons-->
                    <div class="col-lg-4 mb-5 mb-lg-0">
                        <h4 class="text-uppercase mb-4 h1">Workshop Studio</h4>
                        <a class="btn btn-outline-light btn-social mx-1" href="#!"><i class="fab fa-fw fa-facebook-f"></i></a>
                        <a class="btn btn-outline-light btn-social mx-1" href="#!"><i class="fab fa-fw fa-twitter"></i></a>
                        <a class="btn btn-outline-light btn-social mx-1" href="#!"><i class="fab fa-fw fa-linkedin-in"></i></a>
						<div class="mt-5">
							<p class="footerFont text-center">映像演技のレッスン</p>
							<p class="footerFont text-center">ワークショップスタジオ</p>
						</div>
                    </div>

            </div>
        </footer>
        <!-- Copyright Section-->
        <div class="bg-info text-center text-white">
            <div class="container"><small>Copyright c Your Website 2020</small></div>
        </div>
        <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes)-->
        <div class="scroll-to-top d-lg-none position-fixed">
            <a class="js-scroll-trigger d-block text-center text-white rounded" href="#page-top"><i class="fa fa-chevron-up"></i></a>
        </div>
        <!-- Portfolio Modals-->
        <!-- Portfolio Modal 1-->
        <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label" aria-hidden="true">
            <div class="modal-dialog modal-xl" role="document">
                <div class="modal-content">
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"><i class="fas fa-times"></i></span>
                    </button>
                    <div class="modal-body text-center">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <!-- Portfolio Modal - Title-->
                                    <h2 class=" text-secondary mb-0" id="portfolioModal1Label">川崎 僚</h2>

                                    <!-- Portfolio Modal - Image-->
                                    <img class="img-fluid rounded mb-5" src="images/kawasaki.jpg" alt="" />
                                    <!-- Portfolio Modal - Text-->
                                    <p class="mb-5">1986年11月17日生まれ。大分県出身。STARDUST DIRECTORS所属。早稲田大学第二文学部卒業。
在学中に演劇・映像の理論を学び、卒業後は女優へ。その後、シナリオライターに移行し、プロットライターとして映画・ドラマの企画書開発に携わる。その後、短編映画の監督を続け数々の国内映画祭に参加。 2018年には初長編映画「wasted eggs」にて、国際映画祭連盟登録のタリン・ブラックナイツ映画祭に参加。「万引き家族」とともに日本映画代表作として紹介され、海外映画祭デビューを果たした。
2019年は、文化庁委託業務『ndjc2019:若手映画監督育成プロジェクト』にて製作実地研修の参加監督に選抜され短編映画「あなたみたいに、なりたくない。」を監督。</p>
                                    <button class="btn btn-primary" data-dismiss="modal">
                                        <i class="fas fa-times fa-fw"></i>
                                        Close Window
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio Modal 2-->
        <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-labelledby="portfolioModal2Label" aria-hidden="true">
            <div class="modal-dialog modal-xl" role="document">
                <div class="modal-content">
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"><i class="fas fa-times"></i></span>
                    </button>
                    <div class="modal-body text-center">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <!-- Portfolio Modal - Title-->
                                    <h2 class=" text-secondary mb-0" id="portfolioModal2Label">山本 梢</h2>

                                    <!-- Portfolio Modal - Image-->
                                    <img class="img-fluid rounded mb-5" src="images/kozue.jpg" alt="" />
                                    <!-- Portfolio Modal - Text-->
                                    <p class="mb-5">山形生まれ埼玉育ち。学習院大学文学部卒。シナリオセンター、映画24区で脚本について学び、2012年よりニューシネマワークショップにて映像制作について学ぶ。人を羨み生きてきた為、奥歯を噛み締めて生きる人たちに惹かれながら短編映画を中心に制作を続けている。代表作品に『私は渦の底から』(2015年制作・主演橋本紗也加、「東京国際レズビアン&ゲイ映画祭」グランプリ等)、『次は何に生まれましょうか』(2019年制作・主演根矢涼香、「福井駅前短編映画祭」グランプリ等)。</p>
                                    <button class="btn btn-primary" data-dismiss="modal">
                                        <i class="fas fa-times fa-fw"></i>
                                        Close Window
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <!-- Contact form JS-->
        <script src="assets/mail/jqBootstrapValidation.js"></script>
        <script src="assets/mail/contact_me.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>


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