<!DOCTYPE html> 

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<title>승객공지화면</title>
<meta charset="UTF-8">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.0.min.js" ></script>
<link rel="icon" href="http://www.atectn.com/wp-content/uploads/2019/04/favicon.ico" sizes="32x32">
<link rel="icon" href="http://www.atectn.com/wp-content/uploads/2019/04/favicon.ico" sizes="192x192">
<link rel="apple-touch-icon-precomposed" href="http://www.atectn.com/wp-content/uploads/2019/04/favicon.ico">
<meta name="msapplication-TileImage" content="http://www.atectn.com/wp-content/uploads/2019/04/favicon.ico">
<script src="/resources/js/qrcode.js?ver1.1"></script>
<script src="/resources/js/jquery-qrcode-0.14.0.js"></script>
<script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>

	<!--	<h1>
						
		  </h1> -->
		  <img src="http://gw.atectn.com/upload/img/logo/atec/2029/IMG_COMP_LOGO_2029.png"/>		
</head>
<style>
#qrcode {/* 이하 필수 설정 */
 text-align: center; position: relative; top: 70%; left: 50%; transform: translate(30%, 50%);}
#Scan {
 position: relative; top: 10%; left: 10%;text-align: center; vertical-align: middle;
 }
}
</style>
<body>	
		<header>
			<h1 style="text-align : center;">승객공지용 TV화면  QR코드 생성</h1>
		</header>
		<div>
		<div id="input" style="width: 40%;  float: left;">
			<label for="title">*제목</label><br>
			<input type="text" id="title" name="title" class="input" size="12" placeholder="타이틀란입니다" style="width: 100%;" onchange="javascript:modit()" /><br>			 
			<label for="body1">내용 첫째출</label><br>
			<input type="text" id="body1" name="body1" class="input" size="12" placeholder="내용1란입니다" style="width: 100%;" onchange="javascript:modib1()" /><br>
			<label for="body2">내용 둘째줄</label><br>
			<input type="text" id="body2" name="body2" class="input" size="12" placeholder="내용2란입니다" style="width: 100%;" onchange="javascript:modib2()" /><br>
			<label for="body3">내용 셋째줄</label><br>
			<input type="text" id="body3" name="body3" class="input" size="12" placeholder="내용3란입니다" style="width: 100%;" onchange="javascript:modib3()" /><br>
			<label for="body4">내용 넷째줄</label><br>
			<input type="text" id="body4" name="body4" class="input" size="12" placeholder="내용4란입니다" style="width: 100%;" onchange="javascript:modib4()" /><br>
			<label for="tail">*공지사</label><br>
			<input type="text" id="tail" name="tail" class="input" size="12" placeholder="공지사란입니다" style="width: 100%;" onchange="javascript:moditail()" /><br><br>
			<button class="btn btn-info" type="button">문구초기화</button>
			<button class="btn btn-success" type="button">파일다운로드</button>
			<button class="btn btn-danger" type="button">QR코드다운로드</button>
			<p id="qrtext" class="input"></p>
			<div id="qrcode"  style="height:350px; width: 350px; margin:auto; padding : auto"></div>	
		</div>
		<div id="preview" style="height:490px; width:740px; margin:2.0em; float: right;background-image: url(/resources/images/bg01.png); background-repeat: no-repeat; background-size: 100% 100%; border-style: solid; border-width: 1.0em 1.0em;" >		
			<div style="height:95px; width: 710px;">
			<p id="titleview" class="preview" style="height:90px; font-weight : bold; font-size : 2.8em; color : white;  text-align : center;  position: relative; line-height: 200%; top: 50%; left: 50%; transform: translate(-50%, -50%);"> 
			제목란입니다</p>
			</div>
			<div style="height:70px; width: 680px; margin:auto;">
			<p id="body1view" class="preview" style="height:70px; font-weight : bold; font-size : 1.8em; color : yellow; position: relative; top: 50%; left: 50%; transform: translate(-50%, -50%); "> 
			내용 첫째줄입니다</p>
			</div> 
			<div style="height:70px; width: 680px; margin:auto;">
			<p id="body2view" class="preview" style="height:70px; font-weight : bold; font-size : 1.8em; color : yellow; position: relative; top: 50%; left: 50%; transform: translate(-50%, -50%);"> 
			내용 둘째줄입니다</p>
			</div>
			<div style="height:70px; width: 680px; margin:auto;">
			<p id="body3view" class="preview" style="height:70px; font-weight : bold; font-size : 1.8em; color : yellow;  position: relative; top: 50%; left: 50%; transform: translate(-50%, -50%);"> 
			내용 셋째줄입니다</p>
			</div>
			<div style="height:70px; width: 680px; margin:auto;">
			<p id="body4view" class="preview" style="height:70px; font-weight : bold; font-size : 1.8em; color : yellow; position: relative; top: 50%; left: 50%; transform: translate(-50%, -50%); ">
			 내용 넷째줄입니다</p>
			 </div>
			<div style="height:95px; width: 710px; margin:auto;">
			<p id="tailview" class="preview" style="height:90px; font-weight : bold; font-size : 2.6em; color : yellow; text-align : center; position: relative; top: 70%; left: 50%; transform: translate(-50%, -50%);"> 
			공지사란입니다</p>
			</div>		
		</div>
	</div>
		
		
			
		
		
</body>
<script type="text/javascript">
var qrcode = new QRCode(document.getElementById("qrcode"), {
    text: "",
    width: 256,
    height: 256,
    colorDark : "#000000",
    colorLight : "#ffffff",
    correctLevel : QRCode.CorrectLevel.H
});

function modit(){
	var titleval=document.getElementById("title").value;
	if (titleval.length>19){
		alert("입력 가능한 글자수를 초과했습니다 ")
		return;		
	}
	$("#titleview").text(titleval);
	qrtext();		
}
function modib1(){
	var b1val=document.getElementById("body1").value;
	if (b1val.length>29){
		alert("입력 가능한 글자수를 초과했습니다 ")
		return;
	}
	$("#body1view").text(b1val);
	qrtext(); 				
}
function modib2(){
	var b2val=document.getElementById("body2").value;	
	if (b2val.length>29){
		alert("입력 가능한 글자수를 초과했습니다 ")
		return;
	}
	$("#body2view").text(b2val);
	qrtext();					
}
function modib3(){
	var b3val=document.getElementById("body3").value;
	if (b3val.length>29){
		alert("입력 가능한 글자수를 초과했습니다 ")
		return;
	}
	$("#body3view").text(b3val);
	qrtext();			
}
function modib4(){
	var b4val=document.getElementById("body4").value;
	if (b4val.length>29){
		alert("입력 가능한 글자수를 초과했습니다 ")
		return;
	}
	$("#body4view").text(b4val);
	qrtext();			
}
function moditail(){
	var tailval=document.getElementById("tail").value;
	if (tailval.length>19){
		alert("입력 가능한 글자수를 초과했습니다 ")
		return;
	}
	$("#tailview").text(tailval);
	qrtext();			
}
function clear(){	
	$(".input").val('');	
	$(".preview").text(" ");			
}

function qrtext(){
	var qrtext="307 ";
	//qrtext="307 "+$("#titleview").text()+"\n"+$("#body1view").text()+"\n"+$("#body2view").text()+"\n"+$("#body3view").text()+"\n"+$("#body4view").text()+"\n"+$("#tailview").text();
	qrtext+=$("#title").val();
	if($("#title").val()=="")
		qrtext+="    ";
	qrtext+="\n";
	qrtext+=$("#body1").val();
	if($("#body1").val()=="")
		qrtext+="    ";
	qrtext+="\n";
	qrtext+=$("#body2").val();
	if($("#body2").val()=="")
		qrtext+="    ";
	qrtext+="\n";
	qrtext+=$("#body3").val()
	if($("#body3").val()=="")
		qrtext+="    ";
	qrtext+="\n";
	qrtext+=$("#body4").val()
	if($("#body4").val()=="")
		qrtext+="    ";
	qrtext+="\n";
	qrtext+=$("#tail").val()							
	$("#qrtext").text(qrtext);
	var len=qrtext.length;
	//alert(len);
	qrcode.clear();	
	qrcode.makeCode(qrtext);	
}

function partShot() { 	
	html2canvas(document.getElementById("qrcode")) 
	
	.then(function (canvas) { 
	
	drawImg(canvas.toDataURL('image/jpeg')); 
	
	saveAs(canvas.toDataURL(), 'file-name.jpg'); })
	.catch(function (err) { console.log(err); }); } 
	function drawImg(imgData) { console.log(imgData); 
	
	return new Promise(function reslove() { 
	
	var canvas = document.getElementById('qrcode'); 
	var ctx = canvas.getContext('2d'); 
	
	ctx.clearRect(0, 0, canvas.width, canvas.height); 
	var imageObj = new Image();
	imageObj.onload = function () { ctx.drawImage(imageObj, 10, 10); //canvas img를 그리겠다. 
	}; 
	imageObj.src = imgData; 	
	}, function reject() { }); } 
	function saveAs(uri, filename) { var link = document.createElement('a'); 
	if (typeof link.download === 'string') { link.href = uri; link.download = filename; document.body.appendChild(link); 
	link.click(); document.body.removeChild(link); } 
	else { window.open(uri); } }

$(document).ready(function() {
	var formObj = $("form[name='writeForm']");
	$(".btn-info").on("click", function() {
		clear();
	});
	$(".btn-success").on("click", function() {
		alert("버튼누름");
	});
	$(".btn-danger").on("click", function() {		
		partShot();
	});	
})
</script>

</html>

