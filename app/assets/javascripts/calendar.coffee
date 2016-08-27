# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#
#= require moment
#= require adminlte/plugins/fullcalendar/fullcalendar.min


$(document).on 'turbolinks:load', ->
  # initialize the calendar
  date = new Date
  d = date.getDate()
  m = date.getMonth()
  y = date.getFullYear()
  $('#calendar').fullCalendar
    header:
      left: 'prev,next today'
      center: 'title'
      right: 'month,agendaWeek,agendaDay'
    buttonText:
      today: 'today'
      month: 'month'
      week: 'week'
      day: 'day'
    events: '/calendar.json'
