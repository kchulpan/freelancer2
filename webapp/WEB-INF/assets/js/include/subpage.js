	
function create_tab(menu_id, menu_html){
	/* tab 중복 막기 */
	var tab_id = 'tab_' + menu_id;
	
	if(document.getElementById(tab_id)){

		$('#'+tab_id).prop('checked',true);						/* tab이미 있을 때, 그 탭 다시 체크 */
		$('[for =' + tab_id + ']').css('order',1);
		
		$('.tabs > label').not('[for =' + tab_id + ']').each(function (index, item) {
             var order = Number($(item).css('order'));
             $(item).css('order', order+1);
         });
		return;
	}
	
	/* tab 생성 */

	var input_tab = $('<input />').attr({
		type:"radio", id :tab_id, name : "tabs", checked : true
		}).addClass('tab');
	var label_tab = $('<label></label>').attr('for',tab_id).css('order',1).html(menu_html);
	var img_tab = $('<img />').attr({
		src:"/img/subpage/icon_x_grey.png", class:"icon"
	});
	
	label_tab.append(img_tab);
	
	 $('.tabs > label').each(function (index, item) {
            var order = Number($(item).css('order'));
            $(item).css('order', order+1);
     });

	$('.tabs').append(input_tab);
	$('.tabs').append(label_tab);

	$('.tabs').trigger('create');
	
	/* 삭제 이미지 클릭 */
	$('.icon').on('click',function(){
		var name = $(this).parent().attr('for');
		
		$(this).parent().remove();
		$('#'+name).remove();
	});
}
		
/*-------------------------------- ready ---------------------------------------------------------*/


$(document).ready(function(){
	var article_height = $('article').css('height').split('px')[0];
	  var section_height = article_height - 23;
	  $('.sections').css('height',section_height + 'px');
	//resize -> nav 나타났다가 사라졌다가,,
	$( window ).resize(function() {
		  if($(window).width() <=800){ 
			  $('nav').addClass("nav_active");
			  $('article').addClass('article_active');
		  }
		  if($(window).width() > 800){
			  $('nav').removeClass("nav_active");
			  $('article').removeClass('article_active');
		  } 
		  
		  var article_height = $('article').css('height').split('px')[0];
		  var section_height = article_height - 23;
		  $('.sections').css('height',section_height + 'px');
		 
	});
	
	//nav 만들기
	
	//top_menu 클릭
	/*$('#top_menu_box > div').on('click',function(){
			$(this).removeClass('top_menu_active');
			$(this).find('i').removeClass('menu_icon_active');
		}else{
			$(this).addClass('top_menu_active');
			$(this).find('i').addClass('menu_icon_active');
		}
	});*/
	
	
	/* 내정보 클릭 -> 하위메뉴 정보변경/로그아웃 보여줌 */
	$('#myPage').on('click',function(){
		var hidden_myPage = $('.hidden_myPage');
		
		if(hidden_myPage.hasClass('profile_active')){
			hidden_myPage.removeClass('profile_active');
		} else{
			hidden_myPage.addClass('profile_active');
		}
	});
	
	/* side_menu 버튼 클릭-> 왼쪽으로 밀려나게 */
	$('#slide_btn').on('click',function(){
		if($('nav').hasClass('nav_active')){
			$('nav').removeClass('nav_active');
			$('article').removeClass('article_active');
		} else{
			$('nav').addClass('nav_active');
			$('article').addClass('article_active');
		}
	});
	
});