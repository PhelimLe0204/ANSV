<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tin tức ICT</title>
<style type="text/css">
</style>
</head>
<body>
	<section id="about-content">
		<div class="container">
			<div class="row align-self-center text-center">
				<div class="col-md-8 offset-md-2 text-center breadcrumb-info">
					<h2 class="header_text text-uppercase">Tin tức tuyển dụng</h2>
				</div>
			</div>
		</div>
	</section>
	<div class="site-section mt-5">

		<div class="container">
			<h3>Danh sách tin tức tuyển dụng</h3>
			<div class="detail-news">
				<c:forEach var="new_tuyen_dung" items="${new_tuyen_dung}">
					<div class="post-new d-flex mb-3">
						<div class="p-5">
							<a href="<c:url value='/detail_${new_tuyen_dung.id}' />"><img
								style="width: 250px; height: auto; border-radius: 3%" alt=""
								src='<c:url value="/assets/user/img/news/${new_tuyen_dung.img}" />'>
							</a>

						</div>
						<div class="p-n-info">
							<div class="mb-2">
								<span class="p-n-cat"> <%--<span class="p-n-date">${item_news3.updated_at}</span>--%>
							</div>
							<h2 class="p-n-title">
								<a href="<c:url value='/detail_${new_tuyen_dung.id}' />">${new_tuyen_dung.title}</a>
							</h2>
							<div class="p-n-desc justify">${new_tuyen_dung.summary}</div>
						</div>
					</div>

				</c:forEach>
			</div>
		</div>
	</div>

</body>
</html>