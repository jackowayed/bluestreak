//document.write("articles_title_change.js working(ish)");
jQuery(document).ready(function() {

  $("#article_input").change( function(){

    //$("*").css("color", "#F00");

    var article = $('#article_input').attr("value")
    //$("#article_title").text(article)

    $.getJSON("/articles/"+article,
    //$.getJSON("http://api.flickr.com/services/feeds/photos_public.gne?tags=cat&tagmode=any&format=json&jsoncallback=?",
    function(data){
      //if (data!=null&&data.title!=null)  

        $('#article_title').text(data.article.title)


    });
  });
  
  
  //$("*").hide()
});
