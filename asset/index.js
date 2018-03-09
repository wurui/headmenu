define([],function(){
  return {
    init:function($mod){
    	$('.icon-menu',$mod).on('click',function(){
    		$(this).parent().toggleClass('opened')
    	})

    }
  }
})
