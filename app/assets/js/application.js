// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

  

!function(d, s, id) {  
  var js, fjs = d.getElementsByTagName(s)[0];  
  if (d.getElementById(id)) return;  
  js = d.createElement(s); js.id = id;  
  js.src = "//connect.facebook.net/en_GB/all.js#xfbml=1";  
  fjs.parentNode.insertBefore(js, fjs);  
}(document, 'script', 'facebook-jssdk'); 

!function(d,s,id){
	var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}
}(document,"script","twitter-wjs");
