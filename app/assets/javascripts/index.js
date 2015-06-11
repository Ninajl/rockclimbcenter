$(document).ready(function() {
  $(document).on('click', '#gyms', function(e){
    $('.col-md-5').hide();
    $('.table-striped').show();
    $('.row').slideUp(500);

    e.preventDefault;
  });


})
