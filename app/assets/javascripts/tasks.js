$(document).ready(function(){
  $(".edit_task input[type=submit]").remove();

  $("body").on("click", ".edit_task input[type=checkbox]", function(e){
    $(this).parent("form").submit();
  });
});