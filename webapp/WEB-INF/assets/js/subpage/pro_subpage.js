
	
	var side_menus = [];
	
	side_menus [0] = ["조회/수정"];
	side_menus [1] = ["입력/조회/수정"];
	side_menus [2] = ["목록 조회/시간표"];
	
	
//-------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------
function create_side_menu(idx, menu_id, side_menus_name){
	//side menu 만들기
	for (var i = 0; i < side_menus_name.length; i++) {
		var side_menu = $('<div></div>')
					
					.addClass('side_menu')
					.attr('id', menu_id +'_'+ (i+1));
		
		var side_menu_A = $('<a></a>').attr('href','/'+ menu_id +'_'+ (i+1)).html(side_menus_name[i]);
		
		$(side_menu).append(side_menu_A);
		$('#'+menu_id+'_box').append(side_menu);
	}
		
	/* side_menu 클릭 이벤트 */
	$('.side_menu').on('click',function(){
		
		var id = $(this).attr('id');							/* id="menu1_1" */	
		var html = $(this).html();                        		/*<a href="/menu1_1">학적조회</a>*/
		
		create_tab(id, html);	
	});
}
	
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
		
<!-------------------------------- ready --------------------------------------------------------->	


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
	
	//top_menu 생성
	var top_menus = ["출결","성적","강의"];
	var top_menus_id = ["pro_menu_abscent","pro_menu_exam","pro_menu_lecture"];
	var top_menus_icon = ["fa fa-user-o menu_icon","fa fa-line-chart menu_icon","fa fa-table menu_icon"];
	
	for (var i = 0; i < top_menus.length; i++) {
		var top_menu = $('<div></div>').attr('id',top_menus_id[i]).addClass('top_menu');
		var top_menu_html = '<i class="' + top_menus_icon[i] + '"></i>' + top_menus[i];
		top_menu.html(top_menu_html);
		var top_menu_box = $('<div></div>').attr('id',top_menus_id[i] + '_box').addClass('side_menu_box');
		$('#top_menu_box').append(top_menu);
		$('#top_menu_box').append(top_menu_box);
	}
	
	//top_menu 클릭
	$('#top_menu_box > div:even').on('click',function(){
		
		var box_id = $(this).attr('id') + '_box';
		$('#' + box_id).empty();
		
		if($('#' + box_id).hasClass('side_menu_box_active')){
		//side menu 나와있을 때
			//side menu 안보이게, top menu, icon 색깔 -> 흰색(원래대로)
			$('#' + box_id).removeClass('side_menu_box_active');
			$(this).removeClass('top_menu_active');
			$(this).find('i').removeClass('menu_icon_active');
		}else{
		//side menu 안나와있을 때
			//side menu 보이게, top menu, icon 색깔 -> 파란색
			$('#' + box_id).addClass('side_menu_box_active');
			$(this).addClass('top_menu_active');
			$(this).find('i').addClass('menu_icon_active');
			
			//side menu 생성
			for (var i = 0; i < top_menus_id.length; i++) {
				if($(this).attr('id')==top_menus_id[i]){
					create_side_menu(i,$(this).attr('id'), side_menus[i]);
				}
			}
		}
	});
	
	
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