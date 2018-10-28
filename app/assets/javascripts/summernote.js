var SummernoteDemo = function () {
  //== Private functions
  console.log("hello world")
  var demos = function () {
      $('.summernote').summernote({
          height: 200
      });
  }

  return {
      // public functions
      init: function() {
          demos();
      }
  };
}();

jQuery(document).ready(function() {
  SummernoteDemo.init();
});

