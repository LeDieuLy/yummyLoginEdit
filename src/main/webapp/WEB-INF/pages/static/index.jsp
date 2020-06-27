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
                        <h3><a href="#">Goat Cheese and Chorizo Rolls</a></h3>
                        <p>You know how bacon is all the rage these days? Bacon dipped in chocolate, bacon topped donuts, bacon beurre blanc and so and so. For me, it’s all about chorizo.  I’m constantly looking for ways to incorporate it into...</p>
                    </div>
                    <div id="caption_2" class="nivo-html-caption">
                        <h3><a href="#">Pimento Cheese Potato Skins</a></h3>
                        <p>If there’s anything better than the perfect baked potato, it would have to be a twice baked potato. I’m sure everybody’s Mom, Grandma or next-door neighbor has a recipe for double-stuffed potatoes; afterall, if you can bake a potato and...</p>
                    </div>
                    <div id="caption_3" class="nivo-html-caption">
                        <h3><a href="#">Vietnamese Style Grilled Five Spice Chicken</a></h3>
                        <p>It may not be in my best interest to admit this, but here goes nothing: grilling chicken scares me. It’s just too easy to get wrong. Black, cremated skin on the outside with an interior so pink that just looking...</p>
                    </div>
                    <div class="nivo-slides">
                        <a href="#"><img src="images/demo/nivo_71.jpg" title="#caption_1" alt="Goat Cheese and Chorizo Rolls" /></a>
                        <a href="#"><img src="images/demo/nivo_311.jpg" title="#caption_2" alt="Pimento Cheese Potato Skins" /></a>
                        <a href="#"><img src="images/demo/nivo_211.jpg" title="#caption_3" alt="Vietnamese Style Grilled Five Spice Chicken" /></a>
                    </div>

			</div>



		</div>
	</div>
	<!-- SLIDER AREA ENDS HERE -->

	<!-- Home Page Whats Hot Recipe Area -->
	<div id="whats-hot">
		<h2 class="w-bot-border">
			Có thể <span> bạn quan tâm </span>
		</h2>
		<ul class="cat-list clearfix">

			<li>
				<h3>
					<a href="recipe-single-1.html">health </a>
				</h3> <a href="recipe-single-1.html" class="img-box"> <img
					src="${pageContext.request.contextPath}/resources/static/images/demo/single-recipe_2-222x144.jpg"
					class="attachment-recipe-4column-thumb wp-post-image"
					alt="single-recipe_2" />
			</a>
				<h4>
					<a href="recipe-single-1.html"> 10 Tips To Healthy... </a>
				</h4>
				<p>
					Eat a variety of nutrient-rich foods. You need more than 40
					different nutrients for good health, <a
						href="${pageContext.request.contextPath}/detail">...more </a>
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