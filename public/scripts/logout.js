

$( document ).ready(function() {

  $('#logout-form').submit( function(event) {
    event.preventDefault();
    $.ajax({
      type: "POST",
      url: "/logout",
      success: function() {   
        location.reload();  
    }
    }).then(() => {})
      .fail(function(error) {
        console.log( "error", error );
      })
    
  });





}); // document ready


function htmlEncode(str) {
  return String(str).replace(/[^\w. ]/gi, function (c) {
    return '&#' + c.charCodeAt(0) + ';';
  });
}