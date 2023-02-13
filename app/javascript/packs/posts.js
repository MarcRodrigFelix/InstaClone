import $ from "jquery";




    $(function(){
        // jquery loaded
        $(".post-like").on("click", function(){
            var post_id = $(this).data("id");
          // SEND GET REQUEST TO POST/LIKE/:POST_ID
           $.ajax({
                url: "/post/like/"+post_id,
                method: "GET",
           }).done(function(response){
                console.log(response)
            })
        });
    });

// $(document).ready(function() {
// })
