$(document).ready(function() {

  $('#signup').click(function() {
    $('.signup').toggle();
  });

  $('#login').click(function() {
    $('.login').toggle();
  });


  $(".excuse").click(function(event) {
      event.preventDefault();
       var excuseID = $('.find-excuse').val();
      $.ajax({
        type: "post",
        url: "/voteup/",
        success: function(success) {
           $('.vote_count').html(success);
           console.log(success);
        }
      });
    }
  );

});