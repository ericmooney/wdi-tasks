$(document).ready(function(){
  $(".edit_task input[type=submit]").remove();

  $(".edit_task input[type=checkbox]").on("click", function(e){
    $(this).parent("form").submit();
  });
});