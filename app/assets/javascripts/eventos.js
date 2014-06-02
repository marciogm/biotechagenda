$(function () {
	$('#dp').fdatepicker({
						format: 'dd-mm-yyyy' });
	$('#dp2').fdatepicker({
						format: 'dd-mm-yyyy' });					
});


$(document).ready(function() {
 $("#evento_estado_id").change(function() {
    getCitiesByState("id=" +$("#evento_estado_id").val());
  });
});

function getCitiesByState(id) {
  $.getJSON("/cidade_por_estado", id, function(j) {
    var options = '<option value="">Seleciona uma Cidade</option>';
    $.each(j.cidades, function(i, item) {
      options += '<option value="' + item.id + '">' + item.nome + '</option>';
    });
    $("#evento_cidade_id").html(options);
  });
}