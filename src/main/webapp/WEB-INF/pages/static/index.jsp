<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<jsp:include page="layout/_header.jsp"></jsp:include>

<!-- ============= CONTENT AREA STARTS HERE ============== -->
<div id="content" class="clearfix homepage">
	<!-- SLIDER STARTS HERE -->
	<div id="slider" class="nivo-container" style="position:relative">

		 <div class="nivo-slider">
                    <div id="caption_1" class="nivo-html-caption">
                        <h3><a href="#">Cua sốt ớt</a></h3>
                        <p>You know how bacon is all the rage these days? Bacon dipped in chocolate, bacon topped donuts, bacon beurre blanc and so and so. For me, it’s all about chorizo.  I’m constantly looking for ways to incorporate it into...</p>
                    </div>
                    <div id="caption_2" class="nivo-html-caption">
                        <h3><a href="#">Steak chuẩn vị âu</a></h3>
                        <p>If there’s anything better than the perfect baked potato, it would have to be a twice baked potato. I’m sure everybody’s Mom, Grandma or next-door neighbor has a recipe for double-stuffed potatoes; afterall, if you can bake a potato and...</p>
                    </div>
                    <div id="caption_3" class="nivo-html-caption">
                        <h3><a href="#">Bánh bèo Đà Nẵng</a></h3>
                        <p>Món bánh bèo Đà Nẵng dai mềm cùng với phần sốt tôm thịt đậm đà, mỡ hành beo béo chan lên mặt bánh hẳn sẽ khiến bạn vừa ăn vừa gật gù khen ngon đó.</p>
                    </div>
                    <div class="nivo-slides">
                        <a href="#"><img src="resources/images/banh_beo.jpg" title="#caption_1" alt="Cua sốt ớt" /></a>
                        <a href="#"><img src="resources/images/steak.jpg" title="#caption_2" alt="Steak chuẩn vị âu" /></a>
                        <a href="#"><img src="resources/images/cua_sot_ot.jpg" title="#caption_3" alt="Bánh bèo Đà Nẵng" /></a>
                    </div>

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

			<li>
				 <a href="recipe-single-1.html" class="img-box"> <img
					src="${pageContext.request.contextPath}/resources/static/images/demo/banh_tart_trung.jpg"
					class="attachment-recipe-4column-thumb wp-post-image"
					alt="single-recipe_2" />
			</a>
				<h4>
					<a href="recipe-single-1.html"> Bánh tart trứng </a>
				</h4>
				<p>
					Bề ngoài bánh tart nhỏ nhắn, cầm vừa tay, bên trong ẩn chứa hương vị thơm ngon, ngọt nhẹ.<a
						href="${pageContext.request.contextPath}/detail">...xem thêm </a>
				</p>
			</li>

		</ul>
	</div>
	<!-- end of whats-hot div -->

	<!-- <span class="w-pet-border"></span> -->


	<!-- end of home-infos div -->
</div>
<!-- end of content div -->



<jsp:include page="layout/_footer.jsp"></jsp:include>