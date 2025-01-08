$(function(){
	pc.init();
	mobile.init();
	
	common.layoutSet();
	common.lnb();	
	common.dropDown();
	common.headerScroll();
	common.footerLink();
	common.accordion();	
	common.discloseure();
	common.contextual();
	
	//tab
	tab.init();
	

});

$(window).resize(function(){
	common.headerScroll();

	//tab
	tab.init();
});

//pc
var pc = {
	init : function() {
		pc.gnb.init();
	},
	gnb : {
		//gnb 관련
		init : function(){
			//dim 클릭시 gnb 닫기
			$('.gnb_backdrop').on('click', function(){
				pc.gnb.close();
			});
			pc.gnb.menu();
			$('.mobile_gnb').removeClass('is_open').attr('aria-hidden', true);
		},
		close : function(){
			//gnb 닫기
			$('.gnb_backdrop').hide();
			$('body').removeClass('is_gnb');
			$('.gnb_depth_wrap').removeClass('active');
			$('.gnb_1depth').removeClass('active');
			$('.gnb_1depth').each(function() {
				if ($(this).attr('aria-expanded') !== undefined) {
					$(this).attr('aria-expanded', false);
				}
			});
			$('.gnb_2depth').removeClass('active');
			$('.gnb_2depth').each(function() {
				if ($(this).attr('aria-expanded') !== undefined) {
					$(this).attr('aria-expanded', false);
				}
			});
			$('.gnb_main_list').css('min-height', 'auto');
		},
		menu : function(){
			$('.gnb_menu').each(function(){
				$(this).find('.gnb_depth_wrap').siblings('.gnb_1depth')
				.attr('aria-expanded', false)
				.attr('aria-haspopup', true);
				$(this).find('.gnb_sub_list').siblings('.gnb_2depth')
				.attr('aria-expanded', false)
				.attr('aria-haspopup', true);

				// 1depth 클릭
				$('.gnb_1depth').on('click', function(){
					const $this = $(this);
					const $gnbDepthWrap = $(this).siblings('.gnb_depth_wrap');
					if ($gnbDepthWrap.length) {
						$('body').addClass('is_gnb');
						$('.gnb_backdrop').show();
						$('.gnb_1depth').removeClass('active');
						$('.gnb_depth_wrap').removeClass('active');

						$('.gnb_1depth').each(function() {
							if ($(this).attr('aria-expanded') !== undefined) {
								$(this).attr('aria-expanded', false);
							}
						});
						if ($this.attr('aria-expanded') !== undefined) {
							$this.addClass('active').attr('aria-expanded', true);
						} else {
							$this.addClass('active');
						}

						$(this).siblings('.gnb_depth_wrap').addClass('active');

						$('.gnb_2depth').each(function() {
							if ($(this).attr('aria-expanded') !== undefined) {
								$(this).removeClass('active').attr('aria-expanded', false);
							}else {
								$(this).removeClass('active')
							}
						});

						const $mainList = $('.gnb_main_list');
						const $gnb2depthList = $(this).siblings('.gnb_depth_wrap').find('.gnb_2depth_list');
						const $firstItem = $gnb2depthList.find('li').eq(0).find('.gnb_2depth');
						const $firstSubList = $gnb2depthList.find('li').eq(0).find('.gnb_sub_list');
						const $gnbSubList = $(this).siblings('.gnb_depth_wrap').find('.gnb_sub_list');

						if ($gnb2depthList.length) {
							if ($firstItem.length) {
								$firstItem.addClass('active').attr('aria-expanded', true);
								const subListHeight = $firstSubList.outerHeight();
								$mainList.css('min-height', subListHeight + 'px');
							} 
						}else {
							const subListHeight2 = $gnbSubList.outerHeight();
							$mainList.css('min-height', subListHeight2 + 'px');
						}
					}else {
						pc.gnb.close();
					}
						
				});

				// 2depth 클릭
				$('.gnb_2depth').on('click', function() {
					const $this = $(this);
					const $mainList = $('.gnb_main_list');
					const $gnbSubList = $this.siblings('.gnb_sub_list');

					$('.gnb_2depth').each(function() {
						if ($(this).attr('aria-expanded') !== undefined && $(this)[0] !== $this[0]) {
							$(this).removeClass('active').attr('aria-expanded', false);
						}
					});

					if ($this.attr('aria-expanded') !== undefined) {
						$this.addClass('active').attr('aria-expanded', true);
					} else {
						$this.addClass('active');
					}

					if ($gnbSubList.length) {
						const subHeight = $gnbSubList.outerHeight();
						$mainList.css('min-height', subHeight + 'px');
						$('.gnb_2depth').removeClass('active');
						$(this).addClass('active');
					} else {
						$mainList.css('min-height', 'auto');
						$('.gnb_2depth').removeClass('active');
						$(this).addClass('active');
					}
				});

				//tab focus 
				var isMouseDown = false;
				var isKeyboardNavigation = false;
				$(document).on('mousedown', function() {
					isMouseDown = true;
					isKeyboardNavigation = false;
				});
				$(document).on('keydown', function(e) {
					isKeyboardNavigation = true; 
					isMouseDown = false; 
				});
				$('.gnb_menu').on('focus', function() {
					isMouseDown = true;
				});
				$('.gnb_menu').on('focusout', function(e){
					if (isMouseDown) {
						return;
					}
					if (!$.contains(this, e.relatedTarget)) {
						pc.gnb.close();
					}
				});
			});
		}
	},
}

//mobile
var mobile = {
	init : function() {
		mobile.gnb.init();
	},
	gnb : {
		init : function() {
			mobile.gnb.menu();
			mobile.gnb.open();
			mobile.gnb.close();
			$('.mob_1depth').removeClass('active').attr('aria-selected', false);
			$('.menu_wrap>ul>li:first-child').find('.mob_1depth').attr('aria-selected', true).addClass('active');
			$('.mobile_gnb').removeClass('is_open').attr('aria-hidden', true);
			$('.btn_navi.all').attr('aria-expanded', false);
			$('.mob_4depth_wrap').removeClass('is_open');
			$('.mob_4depth_wrap').siblings('.mob_3depth').attr('aria-expanded', false);
			setTimeout(function(){
				$('.mob_4depth_wrap').removeAttr('style');
				$('.gnb_body').scrollTop(0);
			},400)
		},
		menu : function(){
			$('.mobile_gnb').each(function(){
				$('.mobile_gnb').attr('aria-hidden', true);
				$('.mob_1depth').attr('aria-selected', false);
				$('.btn_navi.all').attr('aria-expanded', false);

				//모바일 scroll anchor
				const gnbBody = $('.gnb_body');
				const mobileGnb = $('.mobile_gnb');
				const navItems = $('.submenu_wrap .gnb_sub_list');
				gnbBody.on('scroll', () => {
					const scrollT = gnbBody.scrollTop();
					const scrollHeight = gnbBody[0].scrollHeight;
					const bodyHeight = gnbBody[0].clientHeight;
					navItems.each(function() {
						var item = $(this);
						var id = item.attr('id');
						var menuLink = mobileGnb.find('[href="#' + id + '"]');
						var offset = item.position().top;

						if (scrollT >= offset || bodyHeight + scrollT >= scrollHeight) {
							$('.mob_1depth').removeClass('active').attr('aria-selected', false);
							menuLink.addClass('active').attr('aria-selected', true);
						}
					});
				});

				//모바일 3depth
				$('.mob_3depth').each(function(){
					const hasDepth = $(this).siblings('.mob_4depth_wrap');
					$(this).on('click', function(){
						if(hasDepth.length){
							$(this).attr('aria-expanded', true);
							hasDepth.css('display','block');
							hasDepth.find('.btn_prev').focus();
							setTimeout(function(){
								hasDepth.addClass('is_open');
							},100)
						}
					});
				});

				//모바일 4depth
				$('.mob_4depth_wrap').each(function(){
					var depth4Wrap = $(this);
					var clickDepth = $(this).siblings('.mob_3depth');
					$('.mob_4depth_wrap .btn_prev, .mob_4depth_wrap .btn_closenav').on('click', function(){
						depth4Wrap.removeClass('is_open');
						depth4Wrap.siblings('.mob_3depth').attr('aria-expanded', false);
						clickDepth.focus();
						setTimeout(function(){
							depth4Wrap.removeAttr('style');
						},400)
					});
				});

				//모바일 메뉴 켜질시 focus
				const focusElements = mobileGnb.find('a, button, [tabindex="0"], input, textarea, select');
				if (focusElements.length === 0) return;
				const firstFocusElements = focusElements.first();
				const lastFocusElements = focusElements.last();
				const handleFocusTrap = (event) => {
					if (event.key === "Tab") {
						if (event.shiftKey && document.activeElement === firstFocusElements[0]) {
							event.preventDefault();
							lastFocusElements.focus();
						} else if (!event.shiftKey && document.activeElement === lastFocusElements[0]) {
							event.preventDefault();
							firstFocusElements.focus();
						}
					}
				};
				firstFocusElements.on('keydown', handleFocusTrap);
				lastFocusElements.on('keydown', handleFocusTrap);
				mobileGnb.on('keydown', (event) => {
					if (event.key === 'Tab' && event.shiftKey && document.activeElement === mobileGnb[0]) {
						event.preventDefault();
						lastFocusElements.focus();
					}
				});

			});
		},
		open : function(){
			$('.btn_navi.all').on('click', function(){
				$('.gnb_wrap').attr('tabindex', 0);
				$('body').addClass('is_gnb_mobile');
				$('.mobile_gnb').addClass('is_open').attr('aria-hidden', false);
				$(this).attr('aria-expanded', true);
				setTimeout(function(){
					$('.gnb_wrap').focus();
				},400);
			});
		},
		close : function(){
			$('.gnb_header .btn_closenav').on('click', function(){
				$('.gnb_wrap').removeAttr('tabindex');
				$('body').removeClass('is_gnb_mobile');
				$('.mobile_gnb').removeClass('is_open');
				$('.btn_navi.all').attr('aria-expanded', false);
				setTimeout(function(){
					$('.mobile_gnb').attr('aria-hidden', true);
					$('.btn_navi.all').focus();
				},400);
			});
		}
	}
}

//공통
var common = {
	layoutSet : function(){

		//gnb 기본값 = 0
		var gnbDep1 = typeof window.gnbDep1 !== 'undefined' ? window.gnbDep1 : 0;
        var gnbDep2 = typeof window.gnbDep2 !== 'undefined' ? window.gnbDep2 : 0;
        var gnbDep3 = typeof window.gnbDep3 !== 'undefined' ? window.gnbDep3 : 0;
        var gnbDep4 = typeof window.gnbDep4 !== 'undefined' ? window.gnbDep4 : 0;
		
		//gnb 활성화
		var gnbCrt1 = $(".gnb_menu>li:nth-child(" + (gnbDep1) + ")>button");
		var gnbCrt2 = $(".gnb_menu>li:nth-child(" + (gnbDep1) + ") .gnb_2depth_list >li:nth-child(" + (gnbDep2) + ")>button");
		var gnbCrt3 = $(".gnb_menu>li:nth-child(" + (gnbDep1) + ") .gnb_2depth_list >li:nth-child(" + (gnbDep2) + ") .gnb_sub_list ul>li:nth-child(" + (gnbDep3) + ")>a");

		var snbCrt2 = $("#lnb_nav>.lnb>ul>li:nth-child(" + (gnbDep2) + ")>.lnb_depth");
		var snbCrt3 = $("#lnb_nav>.lnb>ul>li:nth-child(" + (gnbDep2) + ")>.lnb_list>ul>li:nth-child(" + (gnbDep3) + ")");
		var snbCrt4 = $("#lnb_nav>.lnb>ul>li:nth-child(" + (gnbDep2) + ")>.lnb_list>ul>li:nth-child(" + (gnbDep3) + ") .depth>li:nth-child(" + (gnbDep4) + ")");

		if(gnbCrt1) gnbCrt1.addClass("on");
		if(gnbCrt2) gnbCrt2.addClass("active");
		if(gnbCrt3) gnbCrt3.addClass("on");

		if(snbCrt2) snbCrt2.addClass("on");
		if(snbCrt3) snbCrt3.addClass("on");
		if(snbCrt4) snbCrt4.addClass("on");

		$(gnbCrt1).on('click', function(){
			if(gnbCrt1.hasClass("on")){
				gnbCrt1.next(".gnb_depth_wrap").find(".gnb_2depth").removeClass("active");
				gnbCrt2.addClass("active");

				//접근성 추가
				var $gnbCrt2depth = gnbCrt1.next(".gnb_depth_wrap").find(".gnb_2depth");
				$gnbCrt2depth.attr("aria-expanded", "false").filter(".link").removeAttr("aria-expanded");
				gnbCrt2.attr("aria-expanded",'true');
			}
		});

		if(snbCrt2.hasClass("on")){
			snbCrt2.addClass('on');
			snbCrt2.next(".lnb_list").css("display","block");

			//접근성 추가
			snbCrt2.find('button').attr("aria-expanded",'true');
		}
		if(snbCrt3.hasClass("on")){
			snbCrt3.children(".depth_wrap").css("display","block");

			//접근성 추가
			snbCrt3.find('.depth_tit').attr("aria-expanded",'true');
		}
	},
	lnb : function(){

		$('#lnb_nav .lnb_depth').each(function() {
			if($(this).hasClass('on')){
				$(this).find('.sr_only').text('접기');
			}else {
				$(this).find('.sr_only').text('펼침');
			}
		});

		$('#lnb_nav .lnb_depth > button').click(function (event) {
			$('#lnb_nav .lnb_depth').removeClass('on');
			$('#lnb_nav .lnb_depth > button').find('.sr_only').text('펼침');
			if( $(this).hasClass('on') ){
				$(this).removeClass('on').attr('aria-expanded', 'false');
				$(this).parent().removeClass('on');
				$(this).parent().next('.lnb_list').slideUp(200);
			}else{
				$(this).find('.sr_only').text('접기');
				$('.lnb_depth > button').removeClass('on').attr('aria-expanded', 'false');
				$('.lnb_list').slideUp(200);
				$(this).addClass('on');
				$(this).attr('aria-expanded', 'true');
				$(this).parent().addClass('on');
				$(this).parent().next('.lnb_list').slideDown(200);
			}
		});
		//3depth
		$('#lnb_nav .lnb>ul>li .lnb_list ul li>button').click(function(){
			$(this).attr('aria-expanded', 'true');
			$(this).next('.depth_wrap').show();
			$(this).next('.depth_wrap').children('button').focus();
		});
		//4depth
		$('.depth_wrap>button').click(function(){
			$(this).parent('.depth_wrap').hide();
			$(this).parent('.depth_wrap').siblings('button').focus().attr('aria-expanded', 'false');
		});
	},
	dropDown : function(){
		//유틸리티 드롭다운
		$('.header .drop_wrap').each(function(){
			$(this).find('.btn_drop').removeClass('active').attr('aria-expanded', false);
		});
		$('.header .btn_drop').on('click', function(event) {
			event.stopPropagation();
			const $this = $(this); 
			if ($this.hasClass('active')) {
				$this.removeClass('active');
				$this.attr('aria-expanded', false);
				$this.find('.sr_only').text('열기');
			} else {
				$this.addClass('active');
				$this.attr('aria-expanded', true);
				$this.find('.sr_only').text('닫기');
			}
			$('.header .btn_drop').not($this).removeClass('active').attr('aria-expanded', false);
			$('.header .btn_drop').not($this).find('.sr_only').text('열기');
		});
		$('body').on('click', function() {
			$('.header .btn_drop').removeClass('active');
			$('.header .btn_drop').find('.sr_only').text('열기');
			$('.header .btn_drop').attr('aria-expanded', false);
		});
		$('.header .drop_menu').on('click', function(event) {
			event.stopPropagation();
		});
		$('.header .drop_menu').on('focusout', function(e){
			if (!$.contains(this, event.relatedTarget)) {
				$('.header .btn_drop').removeClass('active').attr('aria-expanded', false);
				$('.header .btn_drop').find('.sr_only').text('열기');
			}
		});
	},
	headerScroll : function(){
		//스크롤 - 헤더
		const headerHeight = $('.header_wrap').innerHeight();
		$('.header').css('height', headerHeight + 'px');
		let lastScrollTop = 0;
		$(window).on('scroll', function () {
			let st = $(this).scrollTop();
			let containerTop = $('#containerArea').offset().top;

			if (st > containerTop) {
				$('body').removeClass('scroll_up');
				$('body').addClass('scroll_down');
			} else {
				$('body').removeClass('scroll_down');
				$('body').removeClass('scroll_up');
			}

			if (st > lastScrollTop) {
				$('body').removeClass('scroll_up');
			} else if(st < containerTop) {
				$('body').removeClass('scroll_up');
			}else {
				$('body').removeClass('scroll_down').addClass('scroll_up');
			}
			lastScrollTop = st;
		});
	},
	footerLink : function(){
		$('.footer_links').each(function() {
			const liCount = $(this).children('li').length;
			if (liCount <= 16) {
				$(this).addClass('column');
			}
		});
	},
	accordion : function(){
		$('.btn_accordion').on('click', function(){
			if( $(this).hasClass("active") ){
				$(this).removeClass("active").attr({"aria-expanded": false});
				$(this).parent().next(".accordion_cont").slideUp("fast");
				$(this).parents(".accordion_item").removeClass("active");
			}else{
				$(".accordion_item").removeClass("active");
				$(".btn_accordion").removeClass("active").attr({"aria-expanded": false});
				$(".btn_accordion").parent().next(".accordion_cont").slideUp("fast");
				
				$(this).parents(".accordion_item").addClass("active");
				$(this).addClass("active").attr({"aria-expanded": true});
				$(this).parent().next(".accordion_cont").slideDown("fast");   
			}
		});  
	},
	discloseure : function(){
		$(".btn_disclosure").each(function() {
			var disclosure_wrap = $(this).closest(".disclosure");
			$(this).on("click", function() {
				if (!disclosure_wrap.hasClass("active")) {
					disclosure_wrap.addClass("active");

				} else {
					disclosure_wrap.removeClass("active");
				}
			});
		});
	},
	contextual : function(){
		//도움말 툴팁
		$(".tooltip_wrap .tooltip_btn").click(function(){
			$(this).parents().next(".tooltip_cont").fadeIn();
		});
		
		$(".tooltip_wrap .tooltip_cont .tooltip_close").click(function(){
			$(this).parents(".tooltip_cont").fadeOut();
		});
	}
}

// popup 이벤트
var popup = {
	popupEvent : {
		// openLYpop 팝업 이벤트
		openLYpop : function(){
			$(document).on('click', '.openLYpop', function() {
				var popTarget = $(this).attr("data-LYID"),
					$size   = $(this).attr("data-LYsize");

				popup.popupEvent.Show(popTarget, $size);
			});
		},

		//아이프레임 팝업 이벤트
		iframe : function(iframeID, $id, $size){
			if(event != undefined){
				$(event.currentTarget).attr("data-retrunFocus","Y");
			}
			$(iframeID).addClass("is_open");
			$(iframeID).on('load', function() {
				$(iframeID).contents().find($id).attr("data-iframeID", iframeID);
				$(iframeID)[0].contentWindow.popup.popupEvent.Show($id, $size);
			});

			//아이프레임 부모 문서에 메시지 전송
			if (self !== top) {
				window.parent.postMessage("lockScroll", "*");
			}

			// 부모 문서와 통신을 위한 메시지 리스너
			window.addEventListener("message", function (event) {
				if (event.data === "lockScroll") {
					document.body.classList.add("scroll_no");
				} else if (event.data === "unlockScroll") {
					document.body.classList.remove("scroll_no");
				}
			});
		},

		// 팝업 열기(공통)
		Show : function($id, $size, open_callbackfcn, open_Pram, closed_callbackfcn, closed_Pram){
			//닫기 실행시 포커스 리턴값 셋팅
			if(event != undefined){
				$(event.currentTarget).attr("data-retrunFocus","Y");
			}

			//팝업실행
			$($id).find(".popup_cnt").css("max-width", $size + "px");
			$('body').addClass('scroll_no');
			$($id).addClass('is_open');

			//첫뻔재, 마지막 타겟 셋팅시 예외상태 추가
			var TargetState = "[aria-hidden=true], [style*='display:none'], [style*='display: none'], [style*='display :none'], [style*='display : none']";

			//첫번째, 마지막 포커스 셋팅 전 css로 display:none 처리 되어있는 타겟 분리
			$($id).find("a, button, input, select").not(TargetState).each(function(e){
				if($(this).is(":visible") == false){
					$(this).attr("aria-hidden","false");
				}
			});

			//팝업 내에 첫번째, 마지막 타겟 지정
			$($id).find("a, button, input, select").not(TargetState).last().attr("data-pop-focus","last");
			
			//팝업내 버튼이 없을경우 팝업영역을 첫번째 포커스로 잡음
			var popupType = $($id).attr("data-type");
			if(popupType == "full"){
				$($id).find(".popup_inner").attr({"tabindex" : "0", "data-pop-focus":"first"});                               
			}else{ 
				$($id).find(".popup_cnt").attr({"tabindex" : "0", "data-pop-focus":"first"});      
			}                     
			$($id).find('[data-pop-focus=first]').focus();                       
			
			
			//html 깊이 구해서 aria-hidden 처리 삭제
			var targetHtml = $($id);
			var endClass = targetHtml.parent().prop('tagName');
			
			for(var i = 0; i<20; i++){
				if(endClass != "BODY"){
					targetHtml.removeAttr('aria-hidden');
					targetHtml = targetHtml.parent();
					endClass = targetHtml.parent().prop('tagName');                            
					targetHtml.removeAttr('aria-hidden');
				}
				else {
					break
				}
			}

			//오픈 콜백
			if(open_callbackfcn != undefined){
				eval(open_callbackfcn)(open_Pram);
			}

			//팝업 닫기
			$($id).find('.popup_close').on("click",function(e){
				popup.popupEvent.Closed($id, closed_callbackfcn, closed_Pram);
			});

			//접근성 : 첫번째탭에서 shift + tab 경우 마지막버튼으로 (팝업내 포커스 루프)
			$($id).find("[data-pop-focus=first]").on("keydown", function(e){
				if(e.shiftKey == true && e.which == 9){
					$($id).find("[data-pop-focus=last]").focus();
					return false;
				}
			});
			
			//접근성 : 마지막탭에서 tab 경우 첫번째 버튼 (팝업내 포커스 루프)
			$($id).find("[data-pop-focus=last]").on("keydown", function(e){
				if(e.shiftKey == false && e.which == 9){
					$($id).find("[data-pop-focus=first]").focus();
					return false;
				}
			});

			// 접근성 : esc 키 클릭 시 팝업창 닫기
			$($id).on("keyup", function (e) {
				if (e.key === "Escape") {
					popup.popupEvent.Closed($id, closed_callbackfcn, closed_Pram);
				}
			});

		},

		// 팝업 닫기(공통)
		Closed : function($id, closed_callbackfcn, closed_Pram){

			//아이프레임 체크
			if (self !== top) {
				window.parent.postMessage("unlockScroll", "*");
				$("[data-retrunFocus=Y]", parent.document).focus().removeAttr("data-retrunFocus");
				$($($id).attr("data-iframeid"), parent.document).removeClass("is_open").remove();
			}

			$('body').removeClass('scroll_no');
			$($id).removeClass('is_open')
			$($id).find(".focuseouthidden").remove();
			$("[data-retrunFocus=Y]").focus();


			$("body *").removeAttr("data-retrunFocus");
			$("[data-hidden=hidden]").removeAttr("aria-hidden");
			
			/* 닫기 콜백 */
			if(closed_callbackfcn != undefined){
				eval(closed_callbackfcn)(closed_Pram);
			}
		}
	}, 
	   	
}

//tab 이벤트
var tab = {
	init : function() {
		//탭 공통
		tab.tabEvent();
		//디바이스 너비보다 ul의 너비가 클 경우 scroll 이벤트 탭
		tab.tabWidthScroll();
		//반응형 셀렉트 탭
		tab.tabDropEvent();
	},
	//탭 공통 
	tabEvent: function() {
		$(".tab_area").each(function() {
			const $this = $(this);
			const tab_item = $(this).find(".tab_list_wrap ul[role=tablist] > li");
			var tab_tag = "<span class='sr_only'>선택됨</span>";     
			
			// 항목 클릭 이벤트
			tab_item.click(function() {
				var tab_control = $(this).attr("aria-controls");
				var active_tab_panel = $("#" + tab_control);
				
				// 탭 초기화
				tab_item.removeClass("active").attr("aria-selected", "false");
				tab_item.find("button span").remove();
				$this.find(".tab_cont_wrap .tab_panel").removeClass("active");

				// 클릭한 탭 활성화
				$(this).addClass("active").attr("aria-selected", true);
				active_tab_panel.addClass("active");
			});
			
			// active에 활성화 텍스트 추가
			if($this.children().hasClass("tab_drop_wrap")){ 
				if ($(window).width() > 1024) {
					tab_item.click(function() {
						// 클릭한 탭 활성화
						$(this).find("button").append(tab_tag);  
					});
				}
			}else{
				tab_item.each(function() {
					if($(this).hasClass("active")) {                
						if($this.find("button span").length === 0){
							$(this).find("button").append(tab_tag);
						}
					}
				});
	
				// 항목 클릭 이벤트
				tab_item.click(function() {
					// 클릭한 탭 활성화
					$(this).find("button").append(tab_tag);  
				});
	
				if ($this.find(".tab_list_wrap").hasClass("tab_width")) {
					if ($(window).width() < 1024) {
						$this.find(".tab_list_wrap").addClass("tab_basic");
					} else {
						$this.find(".tab_list_wrap").removeClass("tab_basic");
					}
				} else {
					$this.find(".tab_list_wrap").addClass("tab_basic");
				}
			}
		}); 
	},
	//디바이스 너비보다 ul의 너비가 클 경우 scroll 이벤트 탭
	tabWidthScroll: function() {
		$(".tab_area").each(function() {
			const $this = $(this);
			const tab_item = $(this).find(".tab_list_wrap ul[role=tablist] > li");  

			// 항목 클릭 이벤트
			tab_item.click(function() {
				// 클릭한 탭으로 스크롤 이동
				scroll_to_tab($(this), $this.find("ul"), $this.find(".tab_list_wrap"));
			});

			if ($this.find(".tab_list_wrap").hasClass("tab_width")) {
				if ($(window).width() < 1024) {
					tab_scroll($this);
				}
			} else {
				tab_scroll($this);
			}
		})

		function scroll_to_tab($tab, $tab_list, $tab_wrap) {
			const tabLeftPos = $tab.position().left;
			const tabListScroll = $tab_list.scrollLeft();
			const tabCenterOffset = tabLeftPos + tabListScroll - ($tab_wrap.width() / 2) + ($tab.outerWidth(true) / 2);
			
			// 탭 중앙에 위치
			$tab_list.animate({ scrollLeft: tabCenterOffset }, 400, function() {                    
				btn_state($tab_wrap, $tab_list);// 스크롤 이동 후 버튼 상태 업데이트
			});
		}
		
		function tab_scroll($tab_area) {
            const $tab_wrap = $tab_area.find(".tab_list_wrap");
            const $tab_list = $tab_wrap.find("ul");
            const $tabs = $tab_list.find("li");

            function check_scroll() {                
                var $active_tab = $tabs.filter(".active");
                var myScrollPos;

                // active가 있는 탭의 위치 찾기
                if ($active_tab.length > 0) {
                    const tabLeftPos = $active_tab.position().left;
                    const tabListScroll = $tab_list.scrollLeft();
                    myScrollPos = tabLeftPos + tabListScroll - ($tab_wrap.width() / 2) + ($active_tab.outerWidth(true) / 2);
                } else {
                    myScrollPos = 0;
                }

                // 좌우 버튼 생성
                const scrollLeftButton = "<button type='button' class='scroll_btn scroll_prev'><span class='sr_only'>이전 항목 보기</span></button>";
                const scrollRightButton = "<button type='button' class='scroll_btn scroll_next'><span class='sr_only'>다음 항목 보기</span></button>";

                $tab_wrap.find('.scroll_btn').remove();

                // 디바이스 너비보다 ul의 너비가 클 경우 scroll 이벤트
                if ($tab_list[0].scrollWidth > $tab_wrap.innerWidth()) {
                    $tab_wrap.append(scrollLeftButton).append(scrollRightButton);
                    $tab_wrap.addClass("scroll");
                    $tab_list.css({"padding-left": "48px", "padding-right": "48px"});

                    // 초기 로딩 시 스크롤 위치를 조정
                    $tab_list.scrollLeft(myScrollPos);
                    btn_state($tab_wrap, $tab_list);

                    // 이전 버튼 클릭 이벤트
                    $tab_wrap.off('click').on('click', '.scroll_prev', function() {
                        const scrollAmount = $tabs.first().outerWidth(true);
                        $tab_list.animate({ scrollLeft: $tab_list.scrollLeft() - scrollAmount }, 400, function() {
                            btn_state($tab_wrap, $tab_list);
                        });
                    });

                    // 다음 버튼 클릭 이벤트
                    $tab_wrap.on('click', '.scroll_next', function() {
                        const scrollAmount = $tabs.first().outerWidth(true);
                        $tab_list.animate({ scrollLeft: $tab_list.scrollLeft() + scrollAmount }, 400, function() {
                            btn_state($tab_wrap, $tab_list);
                        });
                    });

                } else {
                    $tab_wrap.removeClass("scroll");
                    $tab_list.css({"padding-left": "0px", "padding-right": "0px"});
                    $tab_list.scrollLeft(myScrollPos);
                }
            }

            // 디바운스를 적용한 리사이징 함수
            function debounce(func, wait) {
                let timeout;
                return function() {
                    const context = this;
                    const args = arguments;
                    clearTimeout(timeout);
                    timeout = setTimeout(function() {
                        func.apply(context, args);
                    }, wait);
                };
            }

            const handleResize = debounce(function() {
                $(".tab_area").each(function() {
                    tab_scroll($(this));
                });
            }, 200);

            // 리사이즈 이벤트에 디바운스 적용
            $(window).resize(handleResize);
            check_scroll();
        }

		// 버튼 상태 이벤트
        function btn_state($tab_wrap, $tab_list) {
            const scrollLeft = $tab_list.scrollLeft();
            const maxScrollLeft = $tab_list[0].scrollWidth - $tab_wrap.innerWidth();

            // 스크롤 바 위치가 0에 있을 경우
            if (scrollLeft <= 0) {
                $tab_wrap.find(".scroll_prev").addClass("disabled");
            } else {
                $tab_wrap.find(".scroll_prev").removeClass("disabled");
            }

            // 스크롤 바 위치가 맨 끝에 있을 경우
            if (scrollLeft >= maxScrollLeft) {
                $tab_wrap.find(".scroll_next").addClass("disabled");
            } else {
                $tab_wrap.find(".scroll_next").removeClass("disabled");
            }
        }
	},
	//반응형 셀렉트 탭
	tabDropEvent: function() {
		$(".tab_drop_wrap").each(function() {
			if ($(window).width() < 1024) {
				const $this = $(this);
				const drop_btn = $this.find(".tab_drop_btn");
				const drop_list = drop_btn.next();
				var drop_tag = "<span class='sr_only'>열기</span>";

				if($(this).find(".tab_drop_btn span").length === 0){
					drop_btn.append(drop_tag); 
				}
				
				drop_btn.click(function(){
					if($this.closest(".tab_drop_wrap").hasClass("active")){
						$this.removeClass("active");
						$this.find(".tab_drop_menu").css("display", "none");
						$this.find(".tab_drop_btn span").text("열기");
					}else{
						//초기화
						$('.tab_drop_wrap').removeClass('active');
						$(".tab_drop_menu").css("display", "none");
						$(".tab_drop_btn span").text("열기");                            

						$this.find(".tab_drop_menu").css("display", "block");
						$this.addClass("active");
						$this.find(".tab_drop_btn span").text("닫기");
					}
				});

				function tab_active() {
					$(".btn_tab").find("span").remove();
					drop_list.find(".item_link").click(function(){
						const drop_active = $(this).contents().not("span").text();
						$(this).parents(".tab_drop_wrap").find(".tab_drop_btn").html(drop_active + drop_tag);

						$(this).parents(".tab_drop_wrap").find(".tab_drop_menu").css("display", "none");
						$(this).parents(".tab_drop_wrap").removeClass("active");
						$(this).parents(".tab_drop_wrap").find(".tab_drop_btn span").text("열기");
					});
				}
				$(window).on("resize", function () {
					tab_active(); 
				});
				tab_active();
				

				$(document).on("click", function (e) {
					if (!$(e.target).closest(".tab_drop_wrap").length) {
						const drop_menu = drop_btn.next();
						const sr_txt = $this.find(".tab_drop_btn .sr_only");

						$this.removeClass("active");
						drop_menu.css("display", "none");
						sr_txt.text("열기");
					}
				});
			}
		});
		
	}
}

