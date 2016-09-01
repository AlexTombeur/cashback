$('#form').on("click", ".expense_sub_category input[type='radio']", function(event){
  console.log($(this).parent(4).parent().parent().parent()[0].id);
  var selector = '#' + $(this).parent().parent().parent().parent()[0].id + ' ' + '.expense_sub_category label';
  $(selector).removeClass('selected');
  $(this).parents('label:first').addClass('selected');
});
