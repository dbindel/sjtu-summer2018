---
---

$(document).ready(function() {

    // Implement client-side filtering
    $("#filters a").click(function(e) {
        e.preventDefault();
        var filter = $(this).attr("id");
        $(".talk").show();
        $(".talk:not(." + filter + ")").hide();
        $("#filters li").removeClass("active");
        $(this).parent().addClass("active");
    });
    
});
