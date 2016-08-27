# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#
#= require smalot-bootstrap-datetimepicker
#= require smalot-bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.pt-BR

$(document).on 'turbolinks:load', ->
  $('.form_start_date').datetimepicker
    language: 'pt-BR'
    format: 'dd/mm/yyyy hh:ii'
    autoclose: true

  $('.form_end_date').datetimepicker
    language: 'pt-BR'
    format: 'dd/mm/yyyy hh:ii'
    autoclose: true
