//document.write("articles_title_change.js working(ish)");
jQuery(document).ready(function() {
  $("#article_input").change( function(){
    //$("*").css("color", "#F00");
    
    var article = $('#article_input').text()
    $.getJSON("/articles/"+article,
    function(data){
      if (data!=null&&data.title!=null)  
        $('#article_title').text(data.title)
    });
  });
  
  
  //$("*").hide()
});
