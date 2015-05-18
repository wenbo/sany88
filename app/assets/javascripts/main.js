$(document).ready(function(){
		$('.nav li').hover(function(){
				$(this).addClass('current')
				$(this).find('.sub_menu').stop().slideDown();

				
		},function(){
				$(this).removeClass('current')
				$(this).find('.sub_menu').stop().slideUp();
				
		})  //导航下拉
		
})
