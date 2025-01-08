<%@ page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>

<jsp:include page="/induk_2023/incFiles/KOR_A/header.jsp"/>

	<div id="contents">

		<!-- snb(1depth명 포함) -->
		<jsp:include page="/induk_2023/incFiles/KOR_A/snb.jsp"/>
		<!-- //snb(1depth명 포함) -->

		<script>
		var gnbDep1 = 1;
		var gnbDep2 = 4;
		var gnbDep3 = 1 ;
		</script>

		<div id="pageTab" class="pageTabBase">
			<ul class="tabList tab5"><!-- 탭갯수 2개~10개까지 tab2~tab10 추가 -->
				<li class="on"><a href="#none">Section 1</a></li>
				<li><a href="#none">Section 2</a></li>
				<li><a href="#none">Section 3</a></li>
				<li><a href="#none">Section 4</a></li>
				<li><a href="#none">Section 5</a></li>
			</ul>
		</div>

		<article>
			<!--컨텐츠 영역-->
			
			<jsp:include page="/induk_2023/style_guide/board/link_default_list.jsp"/>
			
			<!--/컨텐츠 영역-->
		</article>
	</div>

<jsp:include page="/induk_2023/incFiles/KOR_A/footer.jsp"/>
