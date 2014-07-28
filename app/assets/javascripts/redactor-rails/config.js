$(document).ready(
  function(){
  var csrf_token = $('meta[name=csrf-token]').attr('content');
  var csrf_param = $('meta[name=csrf-param]').attr('content');
  var params;
  if (csrf_param !== undefined && csrf_token !== undefined) {
    params = csrf_param + "=" + encodeURIComponent(csrf_token);
  }
  $('.redactor').redactor({
    buttons: ['formatting', 'bold', 'italic', 'unorderedlist', 'orderedlist',
              'outdent', 'indent', 'image', 'table', 'link', 'alignment']
  });
});
