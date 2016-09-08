# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#
#= require smalot-bootstrap-datetimepicker
#= require smalot-bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.pt-BR
#= require adminlte/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min
#= require adminlte/plugins/select2/select2.full.min

$(document).on 'turbolinks:load', ->
  $('#countries_select').change ->
    $.ajax
      type: 'GET'
      url: '/select/states/'
      dataType: 'script'
      data:
        country: $("#countries_select option:selected").val()

  $('#state_select').change ->
    $.ajax
      type: 'GET'
      url: '/select/cities/'
      dataType: 'script'
      data:
        state: $("#state_select option:selected").val()

  $('.form_start_date').datetimepicker
    language: 'pt-BR'
    format: 'dd/mm/yyyy hh:ii'
    autoclose: true

  $('.form_end_date').datetimepicker
    language: 'pt-BR'
    format: 'dd/mm/yyyy hh:ii'
    autoclose: true

  $('.form_start_date').on 'changeDate', (e) ->
    console.log "mdei"
    $('.form_end_date').datetimepicker('setStartDate', e.date);
    return
  $('.form_end_date').on 'changeDate', (e) ->
    $('.form_start_date').datetimepicker('setEndDate', e.date);
    return

  $("#event_description").wysihtml5()

  $(".select2").select2()
