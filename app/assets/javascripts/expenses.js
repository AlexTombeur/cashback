$('#form').on("click", ".expense_sub_category input[type='radio']", function(){
  $('.expense_sub_category label').removeClass('selected');
  $(this).parents('label:first').addClass('selected');
});
