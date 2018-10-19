$(document).ready(function() {
  $(document).on('click',".btn-prev", function() {
    jQuery('.pagination-service .previous_page')[0].click();
  })

  $(document).on('click', ".btn-next", function() {
    jQuery('.pagination-service .next_page')[0].click();
  })
});
