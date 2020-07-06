<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<jsp:include page="layout/_header.jsp"></jsp:include>

<!-- ============= CONTENT AREA STARTS HERE ============== -->
<div id="content" class="clearfix homepage">
	<!-- SLIDER STARTS HERE -->
	<div id="slider" class="nivo-container" style="position:relative">

		 <div class="nivo-slider">
                    <c:forEach items="${top5}" var="post_slide">
				<div style="" id="caption_${post_slide.id }" class="nivo-html-caption">
					<h3>
						<a class="split-slide"
							href="${pageContext.request.contextPath}/post-show/${post_slide.id }">${post_slide.title}</a>
					</h3>
					<p class="split-slide">${post_slide.overview }</p>
				</div>
			</c:forEach>



			<div class="nivo-slides">
				<c:forEach items="${top5}" var="post_slide">
					<a href="${pageContext.request.contextPath}/post-show/${post_slide.id }">
					<img 
				src="${pageContext.request.contextPath }/resources/${post_slide.getImage()}" />
					</a>
				</c:forEach>

			</div>



		</div>
	</div>
	<!-- SLIDER AREA ENDS HERE -->

	<!-- Home Page Whats Hot Recipe Area -->
	<div id="whats-hot">
		<h2 class="w-bot-border">
			Bài viết được xem nhiều nhất
		</h2>
		<ul class="cat-list clearfix">

			<c:forEach items="${ suggestions }" var="post_suges">

			<li>
						
				<a href="${pageContext.request.contextPath}/post-show/${post_suges.id }" class="img-box"> 
				<img 
				src="${pageContext.request.contextPath }/resources/${post_suges.getImage()}" />

						
				</a>
				<h4>
				<a class="split-text"
							href="${pageContext.request.contextPath}/post-show/${post_suges.id }">${post_suges.title}</a>
					
				</h4>
				<p class="split-text">
					${ post_suges.overview }, <a href="${pageContext.request.contextPath}/post-show/${post_suges.id }">...more
					</a>
				</p>
			</li>
			
			</c:forEach>

		</ul>
	</div>
	<!-- end of whats-hot div -->

	<!-- <span class="w-pet-border"></span> -->


	<!-- end of home-infos div -->
</div>
<!-- end of content div -->



<jsp:include page="layout/_footer.jsp"></jsp:include>