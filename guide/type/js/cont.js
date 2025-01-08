$(function(){
	
	cont.init();

})

var cont = {
	init : function() {
        cont.layerPop();
	},
    layerPop : function(){
        //layerPopup
        $('.layer_popup').each(function(){
            var layerPopup = $(this).length;
            var popItem = $(this).find('.popup_item');
            var popClose = popItem.find('.layer_close');
            const $content = $('body').children().not('.layerPopup');

            if(layerPopup){
                $('body').addClass('scroll_no');
            }

            //layerPopup focus
            //FocusElements 업데이트
            const updateFocusElements = () => {
                const focusElements = $('.layer_popup').find('a, button, [tabindex="0"], input, textarea, select');
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
                $('.layer_popup').on('keydown', (event) => {
                    if (event.key === 'Tab' && event.shiftKey && document.activeElement === $('.layer_popup')[0]) {
                        event.preventDefault();
                        lastFocusElements.focus();
                    }
                });
            }
         
            //layerPopup 있을때 바로 focus
            $(document).ready(function() {
                if(layerPopup > 0){
                    updateFocusElements();
                    $('.layer_popup').attr('tabindex', '0');
                    $('.layer_popup').focus();

                    //layerPopup 을 제외한 aria-hidden 처리
                    $content.attr('aria-hidden','true');
                    $('.layer_popup').attr('aria-hidden', 'false');
                }
            });

            //layerPopup close
            popClose.on('click',function(){
                $(this).closest(popItem).remove();
                if ($('.popup_item').length === 0) {
                    $('.layer_popup').attr('aria-hidden', 'true');
                    $('.layer_popup').remove();
                    $content.removeAttr('aria-hidden');
                    $('body').removeClass('scroll_no');
                    //close 클릭시 화면 상단으로 focus 
                    $('#skip_nav').attr('tabindex','0');
                    $('#skip_nav').focus();
                }else{
                    updateFocusElements();
                    $('.layer_popup').focus();
                }
            });

        });
    }
}















