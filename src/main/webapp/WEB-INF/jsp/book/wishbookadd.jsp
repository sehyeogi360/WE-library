<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WE-Library 희망도서 신청</title>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	<!-- 아이콘 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">

	
	<link rel="stylesheet" href="/static/css/style.css" type="text/css">
	
</head>
<body>
	<div id="wrap" class="">
		<c:import url="/WEB-INF/jsp/include/header.jsp"/>
		<section class="contents d-flex justify-content-center">
		
		<div class="mybookinfo-page">
		<div class="sub-profile bg-secondary">
				
			<img class="profile" width="1000px" height="200px" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FlAG5Z%2Fbtsnhr3rPGd%2FKeJ2kZ3AGgbzql1R1aDdr1%2Fimg.jpg" alt="메인로고 사진">
							
			<div class="sub-text bg-info">
				<h2 class="text-center text-white mt-3"><b>희망도서 신청</b></h2>
			</div>
		</div>
		
		
		<div class="d-flex mx-5">
		
		<c:import url="/WEB-INF/jsp/include/sidenav2.jsp"/>
		
		<div class="col-9 ">
		<!-- 신청자 정보 -->
		<div class ="mt-4"><h4><b>신청자 정보</b></h4></div>
		
		<div class="">
		
		<table class="table">
			<thead>
				<tr>
					<td></td>
					<td></td>
				</tr>
			</thead>
			
			<tbody>
			
				<tr>
					<td class="item col-3">신청자명</td>
					<td class="col-9">${user.name }</td>
				</tr>
				<tr>
					<td class="item">휴대폰 번호</td>
					<td>${user.phoneNumber }</td>
				</tr>
				<tr>
					<td class="item">이메일</td>
					<td>${user.email }</td>
				</tr>
			</tbody>
		</table>
		
		
		</div>
		

		
		
		<!-- 희망도서 도서 정보 -->
		<div class ="mt-4"><h4><b>희망도서 정보</b></h4></div>
		
		
		<table class="table">
		<thead>
		<tr>
			<td class="item col-3">신청도서관</td>
			<td class="col-9">
				<select id="librarySelector" class="form-control">
					<option value="역삼푸른솔도서관">역삼푸른솔도서관</option>
					<option value="역삼도서관">역삼도서관</option>
					<option value="행복한 도서관">행복한 도서관</option>
					<option value="논현 도서관">논현 도서관</option>
					<option value="대치 도서관">대치 도서관</option>
					
				</select>
			
			</td><!-- 이것도 옵션 -->
		</tr>
		</thead>
		
		<tbody>
			<tr>
				<td class="item">희망도서명</td>
				<td>
				  <form action="/book/bookaddpopup" method="get" class="">
					<div class="search d-flex justify-content-center">
		                <input type="text" value="" placeholder="검색어를 입력하세요." id="titleInput" class="form-control" name="title">
		                <div class="input-group-append">
		                	<button type="submit" class="btn">검색</button>
		                </div>
		            </div>
				  </form>
				</td>
			</tr>
			
			<tr>
				<td class="item ">사진</td>
				<td><input type="file" name="file" id="fileInput" class=""><img class="wishbookprofile" width ="40" height="40" src="${wishbook.imagePath}" value="${wishbook.imagePath}"></td>
				
			</tr>
			<tr>
				<td class="item ">저자</td>
				<td><input type="text" value="" placeholder="" id="authorInput" class="form-control"></td>
			</tr>
			<tr>
				<td class="item ">출판사</td>
				<td><input type="text" value="" placeholder="" id="publisherInput" class="form-control"></td>
			</tr>
			<tr>
				<td class="item ">발행연도</td>
				<td><input type="text" value="" placeholder="" id="pubyearInput" class="form-control"></td>
			</tr>
			<tr>
				<td class="item">ISBN</td>
				<td><input type="text" value="" placeholder="" id="isbnInput" class="form-control"></td>
			</tr>
			<tr>
				<td class="item">정가</td>
				<td><input type="text" value="" placeholder="" id="priceInput" class="form-control"></td>
			</tr>
			
			
		</tbody>
		
		
		</table>
		
			<div class="text-center">
				<button id="addBtn" class="btn btn-primary my-3" data-user-id="${wishbook.userId }">신청하기</button>
			</div>
			
		</div>
		
		
		
		</div>
		
		</div>
		
		
		</div>
		
		
		
		</section>
		
		
		<c:import url="/WEB-INF/jsp/include/footer.jsp"/>
	
	
	<style>
	</style>
	<script>
	$(document).ready(function(){
		
		$("#addBtn").on("click", function(){
			
			let id = $(this).data("user-id");
			let library = $("#librarySelector").val();
			let file = $("#fileInput")[0];
			let title = $("#titleInput").val();
			let author = $("#authorInput").val();
			let publisher = $("#publisherInput").val();
			let pubyear = $("#pubyearInput").val();
			let isbn = $("#isbnInput").val();
			let price =  $("#priceInput").val();
			
			
			if(library == ""){
				alert("도서관을 선택하세요.");
				return;
			}
			
			if(title == ""){
				alert("제목을 입력하세요.");
				return;
			}
			
			
			
			if(author == ""){
				alert("저자를 입력하세요.");
				return;
			}
			
			if(publisher == ""){
				alert("출판사를 입력하세요.");
				return;
			}
			
			if(pubyear == ""){
				alert("발행년도를 입력하세요.");
				return;
			}
			
			if(isbn == ""){
				alert("ISBN를 입력하세요.");
				return;
			}
			
			if(price == ""){
				alert("정가를 입력하세요.");
				return;
			}
			
			
			//alert(library);
			//alert(title);
			//alert(author);
			//alert(publisher);
			//alert(pubyear);
			//alert(isbn);
			//alert(price);
			
			var formData = new FormData();
			
			formData.append("id", id);//여기도 로그인id 그냥 id 로 수정
			formData.append("library", library);			
			formData.append("file", file.files[0]);
			formData.append("author", author);
			formData.append("publisher", publisher);
			formData.append("pubyear", pubyear);
			formData.append("isbn", isbn);
			formData.append("price", price);
			
			
			
			$.ajax({
				
				type:"post"
				, url: "/book/wishbook/create"
				, data:formData//파일이 포함되어있는경우 일반적인 형태:{}로는 전달안된다고 함. 위의 formData.append("file", file.files[0]);이 전달안되서.
				, enctype :"multipart/form-data"
				, processData:false// 파일 업로드 필수(근데 여기선 필수로 하면안됨)
				, contentType:false// 파일 업로드 필수
				, success:function(data){
					if(data.result == "success"){
						location.reload();
						alert("추가 성공");
					} else {
						alert("추가 실패");
					}
					
				}
				, error:function(){
					
					alert("추가 오류");
				}
				
			});
			
			
			
		});
	});
	</script>
	
</body>
</html>