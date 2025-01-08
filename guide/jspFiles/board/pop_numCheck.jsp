<%@ page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>

<jsp:include page="/kcoach/incFiles/KOR_A/header.jsp"/>

	<div id="contents">

		<!-- snb(1depth명 포함) -->
		<jsp:include page="/kcoach/incFiles/KOR_A/snb.jsp"/>
		<!-- //snb(1depth명 포함) -->

		<script>
			var gnbDep1 = 1;
			var gnbDep2 = 4;
			var gnbDep3 = 1 ;
		</script>

		
		<article>
			<button type="button" class="baseBtn medium" id="passPop"><span class="base">비밀번호 확인 팝업 열기</span></button>

			<script>
				$("#contents").append('<iframe id="pop_pwCheckIframe" class="pop_iframe" height="100%" scrolling="no" frameborder="0" title="[팝업] 확인번호 입력" src="/kcoach/style_guide/board/pop_numCheck.jsp"></iframe>');
				//아이프레임 어팬드 후 아래 함수 실행 ui.LayerPop.iframe(아이프레임ID, 아이프레임 내 팝업 ID)
				ui.LayerPop.iframe("#pop_pwCheckIframe", "#pop_pwCheck", "400");

				$("#passPop").on("click", function(e){
					$("#contents").append('<iframe id="pop_pwCheckIframe" class="pop_iframe" height="100%" scrolling="no" frameborder="0" title="[팝업] 확인번호 입력" src="/kcoach/style_guide/board/pop_numCheck.jsp"></iframe>');
					ui.LayerPop.iframe("#pop_pwCheckIframe", "#pop_pwCheck", "400");
				});
			</script>
		</article>

	</div>

<jsp:include page="/kcoach/incFiles/KOR_A/footer.jsp"/>
