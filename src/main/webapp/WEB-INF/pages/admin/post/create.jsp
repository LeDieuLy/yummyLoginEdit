<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../../static/layout/_header.jsp"></jsp:include>

<style>
	select {
		margin-left: 46px;
		outline: none;
	}

	select option {
		padding: 10px;
	}

	.space-left {
		margin-left: 71px;

	}

	input {
		border-radius: 25px;
		border: none;
		background: #e6e6e6;
		height: 40px;
	}
</style>

<div id="content" class="clearfix" style="width: 100%;-webkit-box-shadow: 1px 6px 19px -4px rgba(0,0,0,0.75);
-moz-box-shadow: 1px 6px 19px -4px rgba(0,0,0,0.75);
box-shadow: 1px 6px 19px -4px rgba(0,0,0,0.75);">
	<div id="left-area" class="clearfix" style="width: 91%;">
		<div class="post-53 post category-barbeque" id="post-53">

			<form action="post-create" enctype="multipart/form-data" method="POST">


				<h3 style="font-size: 30px; text-align: center; margin: 30px 0px;" class="single-post-title">Tạo bài
					viết mới</h3>



				<input name="title" style="width: 100%; color: #888;" minlength="5" required maxlength="150"
					placeholder="Nhập tiêu đề bài viết !!" />
				<br>
				<br>
				<br>
				<div class="post-53 post category-barbeque" style="width: 100%;">
					<div class="blog-div with20">
						<h3 style="text-align: center;margin-left: 50px;">Thời gian</h3>

						<select class="dropdown" name="time">
							<option value="15">15 Phút</option>
							<option value="30">30 Phút</option>
							<option value="45">45 Phút</option>
							<option value="60">60 Phút</option>
						</select>
					</div>

					<div class="blog-div with20 ">
						<h3 style="text-align: center;margin-left: 48px;">Khẩu phần</h3>
						<select class="dropdown" name="ration">
							<option value="1">1 Người</option>
							<option value="2">2 Người</option>
							<option value="3">3 Người</option>
							<option value="4">4 Người</option>
						</select>
					</div>

					<div class="blog-div with20">
						<h3 style="text-align: center; margin-left: 51px;">Cách thức</h3>
						<select class="dropdown" name="kind">
							<option value="Nướng">Nướng</option>
							<option value="Kho/Om">Kho/Om/Sốt</option>
							<option value="Chiên/Rán">Chiên/Rán</option>
							<option value="Canh/Súp">Canh/Súp</option>
							<option value="Luộc/Hầm/Hấp">Luộc/Hầm/Hấp</option>
							<option value="Xào/Rang/Rim">Xào/Rang/Rim</option>
							<option value="Bún/Miến/Phở">Bún/Miến/Phở</option>
						</select>
					</div>

					<div class="blog-div with20">
						<h3 style="text-align: center; margin-left: 51px;">Mức độ</h3>
						<select class="dropdown" name="level">
							<option value="Đơn giản">Đơn giản</option>
							<option value="Trung bình">Trung bình</option>
							<option value="Khó">Khó</option>
						</select>
					</div>

					<div class="blog-div with20">
						<h3 style="text-align: center;">Giá thành</h3>
						<input type="number" required max="1000" style="width: 100px; margin-left: 32px; height: 11px;"
							name="price" />
					</div>
				</div>


									<script type="text/javascript">
									     function readURL(input) {
									            if (input.files && input.files[0]) {
									                var reader = new FileReader();

									                reader.onload = function (e) {
									                    $('#blah')
									                        .attr('src', e.target.result)
									                        .width(200)
									                        .height(174);
									                };

									                reader.readAsDataURL(input.files[0]);
									            }
									        }
										
										</script>

										<div class="" style="width: 100%;">
										<a title="Best Bread pairing for Barbeque?">
										<img style="width: 889px; height: 400px; margin-bottom: 10px" id="blah" alt="example image"
											src="${pageContext.request.contextPath }/resources/static/images/demo2/PPRGP-575x262.jpg" />
										</a>
											
											
										<div class="post-thumb single-img-box" style="width: 100%;">

												<input onchange="readURL(this);" type="file" name="image"
													style="margin: auto; width: 108px;" />

											</div>



				<div class="" style="width: 100%;">
					<a title="Best Bread pairing for Barbeque?">
						<embed id="video" src="" wmode="transparent" type="application/x-shockwave-flash" width="889"
							height="400" allowfullscreen="true" title="Adobe Flash Player"></embed>

					</a>



					<input name="video_url" id="input" type="url" required pattern="https?://.+"
						placeholder=" Nhập liên kết video hướng dẫn bắt đầu bằng https:// hoặc http:// !! "
						style="width: 100%;">

				</div>




				<div class="blog-div with30">
					<h3 style="text-align: center;">Xuất xứ</h3>
					<select class="dropdown" name="nation" class="space-left">
						<option value="Việt Nam">Việt Nam</option>
						<option value="Nhật Bản">Nhật Bản</option>
						<option value="Trung Quốc">Trung Quốc</option>
						<option value="Thái Lan">Thái Lan</option>
						<option value="Hàn Quốc">Hàn Quốc</option>
						<option value="Châu Âu">Châu Âu</option>
						<option value="Châu Á">Châu Á</option>
						<option value="Châu Mỹ">Châu Mỹ</option>
					</select>
				</div>

				<div class="blog-div with30">
					<h3 style="text-align: center;">Ngày lễ/Kỉ</h3>
					<select class="dropdown" name="holiday" class="space-left">
						<option value="Sinh nhật">Sinh nhật</option>
						
					</select>
				</div>

				<div class="blog-div with30">
					<h3 style="text-align: center;">Thể loại</h3>
					<select class="dropdown" name="category" class="space-left">
						<option value="Bánh">Bánh</option>
						<option value="Lẩu">Lẩu</option>
						<option value="Salad">Salad</option>
						<option value="Ăn sáng">Ăn sáng</option>
						<option value="Ăn vặt">Ăn vặt</option>
						<option value="Khai vị">Khai vị</option>
						<option value="Món chay">Món chay</option>
						<option value="Món chính">Món chính</option>
						<option value="Đồ uống">Đồ uống</option>
					</select>
				</div>

				<div class="blog-div with30">
					<h3 style="text-align: center;">Phù hợp</h3>
					<select class="dropdown" name="suitable" name="" class="space-left">
						<option value="Gia đình">Gia đình</option>
						<option value="Người gầy">Người gầy</option>
						<option value="Người béo phì">Người béo phì</option>
						<option value="Người tập GYM">Người tập GYM</option>
					</select>
				</div>

				<h1 class="w-bot-border">
					Giới <span> thiệu</span>
				</h1>
				<textarea name="overview" cols="122" rows="9" required
					placeholder="Mô tả - Giới thiệu về món ăn của bạn !! " class="pb-cmnt-textarea"></textarea>
					
				<h1 class="w-bot-border">
					Nguyên <span>liệu </span>
				</h1>
				<textarea name="material" cols="122" rows="9" required
					placeholder="Cách loại nguyên liệu cần chuẩn bị !!" class="pb-cmnt-textarea"></textarea>	
					
				<h1 class="w-bot-border">
					Cách <span>làm </span>
				</h1>
				<textarea name="making" cols="122" rows="9" required placeholder="Chia sẻ cách làm của bạn !! "
					class="pb-cmnt-textarea"></textarea>
					
				
		</div>
		<!-- end of post div -->

		<div class="comments">
			<!-- You can start editing here. -->

			<span class="w-pet-border"></span>

			<div class="reply" style="margin-left: 353px;">
				<input type="reset" class="btn btn btn-danger" style="height: 49px; line-height: 37px; width: 66px;"
					aria-label="Reply to admin">

				<button class="btn btn btn-success" style="height: 49px; line-height: 38px; width: 108px;"
					aria-label="Reply to admin">Tạo bài viết </button>
			</div>


		</div>

		</form>


	</div>

</div>



<jsp:include page="../../static/layout/_footer.jsp"></jsp:include>