<%@ page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>

<jsp:include page="/hywu_2022/incFiles/KOR_A/header.jsp"/>

	<div id="contents"> 

		<!-- snb(1depth명 포함) -->
		<jsp:include page="/hywu_2022/incFiles/KOR_A/snb.jsp"/>
		<!-- //snb(1depth명 포함) -->

		<script>
		var gnbDep1 = 1;
		var gnbDep2 = 4;
		var gnbDep3 = 1 ;
		</script>

		<article>
			<!--컨텐츠 영역-->
			
			<jsp:include page="/hywu_2022/style_guide/board/bid_default_write.jsp"/>
			
			<!--/컨텐츠 영역-->
		</article>
	</div>

<jsp:include page="/hywu_2022/incFiles/KOR_A/footer.jsp"/>
