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
        $("#topheader").toggle()

        $('#article_title').text(data.title)
        $("#article_title").css("color", "#F00")


    });
  });
  
  
  //$("*").hide()
});
