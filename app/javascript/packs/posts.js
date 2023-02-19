import $ from "jquery";

$(document).on("turbolinks:load", function(){
    // jquery loaded

    $("#post-comment").on("click", function(){
        $("#comment_comment").focus();
    });

    $(".post-like").on("click", function(){
        var post_id = $(this).data("id");
        // SEND GET REQUEST TO POST/LIKE/:POST_ID

        $.ajax({
            url: "/post/like/"+post_id,
            // url: Routes.likes_post_path(post_id),
            method: "GET",
        }).done(function(response){
            console.log(response)
        });
    });
});

// $(document).ready(function() {
// })
