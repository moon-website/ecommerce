$(document).ready(function() {
  console.log("hello")
  $(document).on('click',".btn-prev", function() {
    console.log("hello back")
    jQuery('.pagination-service .previous_page')[0].click();
  });

  $(document).on('click', ".btn-next", function() {
    console.log("hello next")
    jQuery('.pagination-service .next_page')[0].click();
  });
});
