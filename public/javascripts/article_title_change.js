//document.write("articles_title_change.js working(ish)");
jQuery(document).ready(function() {
  $("#article_input").change( function(){
    //$("*").css("color", "#F00");
    $("#topheader").toggle()
    var article = $('#article_input').attr("value")
    $("#article_title").text(article)
    $.getJSON("/articles/"+article,
    function(data){
      //if (data!=null&&data.title!=null)  
        $('#article_title').text(data)
    });
  });
  
  
  //$("*").hide()
});
