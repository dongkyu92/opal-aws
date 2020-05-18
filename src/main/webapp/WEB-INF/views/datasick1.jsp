<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<script src="resources/opalcold_files/htmlwidgets-1.5.1/htmlwidgets.js"></script>
<link href="resources/opalcold_files/wordcloud2-0.0.1/wordcloud.css" rel="stylesheet" />
<script src="resources/opalcold_files/wordcloud2-0.0.1/wordcloud2-all.js"></script>
<script src="resources/opalcold_files/wordcloud2-0.0.1/hover.js"></script>
<script src="resources/opalcold_files/wordcloud2-binding-0.2.1/wordcloud2.js"></script>
  
<meta charset="EUC-KR">
<title>질병 data 페이지</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link rel="stylesheet" href="resources/journal/bootstrap.css"
	media="screen">
<link rel="stylesheet" href="resources/_assets/css/custom.min.css">
<link rel="stylesheet" href="resources/ourcss/main.css">
<style>
.cont {
	display: flex;
	background-color: white;
	margin-bottom: 20px;
}

.opt1 {
	justify-content: space-around;
}

.box {
	padding: 5px 45px;
	margin: 5px;
	/* background-color: #f2f2f2; */
}

p {
	color: black;
	text-align: center;
}

.sickfood {
	width: 220px;
	height: 200px;
}

.button {
	display: inline-block;
	padding: 10px 30px;
	font-size: 10px;
	cursor: pointer;
	text-align: center;
	outline: none;
	color: white;
	background: #67B26F;
	font-size: 1em;
	width: 15%;
	height: 100px;
}

.button:hover {
	color: #67B26F;
	background-color: white;
	border: 1px solid #67B26F;
	border-radius: 5px;
}

.selectbutton {
	display: inline-block;
	padding: 10px 30px;
	font-size: 10px;
	cursor: pointer;
	text-align: center;
	outline: none;
	color: #67B26F;
	background-color: white;
	border: 1px solid #67B26F;
	border-radius: 5px;
	font-size: 1em;
	width: 15%;
	height: 100px;
}

.textcenter {
	text-align: center;
}

.wordcloud{
	text-align: center;
	padding-rigth: 10%;
	padding-left: 25%;
}
</style>
</head>
<body>
	<header>
		<div class="header_wrap">
			<div class="logo">
				<a href="/opalproject/main">
					<h1>
						<img src="resources/images/Opal.png" width=150 alt
							class="default_logo">
					</h1>
				</a>
			</div>

			<div class="top_nav">
				<div class="top_ul">
					<div class="bs-component1">
						<nav class="navbar navbar-expand-lg navbar-light bg-light">
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#navbarColor03"
								aria-controls="navbarColor03" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>

							<div class="collapse navbar-collapse" id="navbarColor03">
								<ul class="navbar-nav mr-auto">
									<li class="nav-item"><a class="nav-link"
										style="font-size: 12px;" href="#">로그인</a></li>
									<li class="nav-item"><a class="nav-link"
										style="font-size: 12px;" href="#">회원가입</a></li>
									<li class="nav-item"><a class="nav-link"
										style="font-size: 12px;" href="#">고객센터</a></li>
								</ul>
							</div>
						</nav>
					</div>
				</div>
			</div>
	</header>
	<!--header 끝-->

	<div class="bs-component2">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarColor03" aria-controls="navbarColor03"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<!--건드리지 마세요.-->

			<div class="collapse navbar-collapse" id="navbarColor03"
				style="height: 100px">
				<div class="navbar-nav2">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item2"><a class="nav-link"
							style="padding-right: 4rem;" href="/opalproject/about">소개</a></li>
						<li class="nav-item2"><a class="nav-link"
							style="padding-right: 4rem;" href="/opalproject/datamain">질병DATA</a></li>
						<li class="nav-item2"><a class="nav-link"
							style="padding-right: 4rem;" href="/opalproject/goods">농산물구매</a></li>
						<li class="nav-item2"><a class="nav-link"
							style="padding-right: 4rem;" href="/opalproject/markets">농가별구매</a></li>
						<li class="nav-item2"><a class="nav-link"
							style="padding-right: 4rem;" href="#">레시피</a></li>
						<li class="nav-item2"><a class="nav-link"
							style="padding-right: 4rem;" href="#">식단추천</a></li>
						<li class="nav-item2"><a class="nav-link"
							style="padding-right: 4rem;" href="#">정기결제</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<hr>
	<br>
	<!--main navbar 끝-->

	<section>
		<!-- 여기에 만든 컨텐츠를 넣으면 될 것 같다. -->
		<!-- Main Controller 내부에 존재하는 datamain 메서드. -->
		<!-- 길어진다면 메서드를 분할해가 사용해도 된다. -->
		<!-- 20200514 jung 질병 데이터 페이지 구성 -->
		<br>
		

		<div class="cont opt1">
			<script>
				var food = new Array('ㅎ', '도라지', '배', '생강', '무', '마늘');

				for (var i = 1; i <= 5; i++) {
					document.write("<div class='box'>");
					document.write("<img class='sickfood' src='resources/img/sick1"+i+".PNG'>");
					document.write("<br>");
					document.write("<br>");
					document.write("<h5 class='textcenter'>" + food[i]	+ "</h5>");
					document.write("</div>");
				}
			</script>
		</div>
		<br>
<div id="htmlwidget_container" class="wordcloud">
  <div id="htmlwidget-8be566e406ab381ca717" style="width:800px;height:550px;" class="wordcloud2 html-widget"></div>
</div>
<script type="application/json" data-for="htmlwidget-8be566e406ab381ca717">{"x":{"word":["도라지","차","비타민","배","생강","즙","물","과일","무","청","마늘","레몬","수세미","약재","천연","당근","사포닌","콩나물","하루","꿀","대파","더덕","삼","약용식물","오메가","한방","껍질","대추","약초","홍삼","귤","도라지배즙","모과","양파","오미자","미네랄","민들레","설탕","연근","영양소","자연","채소","토마토","항산화","계란","식혜","인삼","칼슘","콩","폴리스","고구마","고등어","단백질","배즙","버섯","블루베리","올리브","호두","호박"],"freq":[98,72,55,53,45,31,26,21,16,16,14,11,11,11,11,10,10,10,10,9,9,9,9,9,9,9,8,8,8,8,7,7,7,7,7,6,6,6,6,6,6,6,6,6,5,5,5,5,5,5,4,4,4,4,4,4,4,4,4],"fontFamily":"Yang Rounded","fontWeight":"bold","color":"random-light","minSize":0,"weightFactor":1.83673469387755,"backgroundColor":"black","gridSize":0,"minRotation":-0.523598775598299,"maxRotation":-0.523598775598299,"shuffle":true,"rotateRatio":1,"shape":"circle","ellipticity":0.65,"figBase64":null,"hover":null},"evals":[],"jsHooks":{"render":[{"code":"function(el,x){\n                        console.log(123);\n                        if(!iii){\n                          window.location.reload();\n                          iii = False;\n\n                        }\n  }","data":null}]}}</script>
<script type="application/htmlwidget-sizing" data-for="htmlwidget-8be566e406ab381ca717"> {"viewer":{"width":1,"height":1,"padding":0,"fill":true}}</script>
<br>
<br>
		<div class="cont opt1">
			<button class="selectbutton" >감기/기관지</button>
			<button class="button" onclick="location.href='http://localhost:8000/opalproject/datasick2'">고혈압</button>
			<button class="button" onclick="location.href='http://localhost:8000/opalproject/datasick3'">당뇨</button>
			<button class="button" onclick="location.href='http://localhost:8000/opalproject/datasick4'">위/식도</button>
			<button class="button" onclick="location.href='http://localhost:8000/opalproject/datasick5'">대장/췌장</button>
		</div>
		<br>
		<h4 class="textcenter">다른 질병으로 선택하시려면 버튼을 눌러주세요.</h4>


	</section>

	<footer>
		<h3>홈페이지 정보(바닥 글)</h3>
	</footer>
	<!--footer 끝-->

</body>
<script src="resources/_vendor/jquery/dist/jquery.min.js"></script>
<script src="resources/_vendor/popper.js/dist/umd/popper.min.js"></script>
<script src="resources/_vendor/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="resources/_assets/js/custom.js"></script>
</html>