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
    events: [
      {
        title: 'All Day Event'
        start: new Date(y, m, 1)
        backgroundColor: '#f56954'
        borderColor: '#f56954'
      }
      {
        title: 'Long Event'
        start: new Date(y, m, d - 5)
        end: new Date(y, m, d - 2)
        backgroundColor: '#f39c12'
        borderColor: '#f39c12'
      }
      {
        title: 'Meeting'
        start: new Date(y, m, d, 10, 30)
        allDay: false
        backgroundColor: '#0073b7'
        borderColor: '#0073b7'
      }
      {
        title: 'Lunch'
        start: new Date(y, m, d, 12, 0)
        end: new Date(y, m, d, 14, 0)
        allDay: false
        backgroundColor: '#00c0ef'
        borderColor: '#00c0ef'
      }
      {
        title: 'Birthday Party'
        start: new Date(y, m, d + 1, 19, 0)
        end: new Date(y, m, d + 1, 22, 30)
        allDay: false
        backgroundColor: '#00a65a'
        borderColor: '#00a65a'
      }
      {
        title: 'Click for Google'
        start: new Date(y, m, 28)
        end: new Date(y, m, 29)
        url: 'http://google.com/'
        backgroundColor: '#3c8dbc'
        borderColor: '#3c8dbc'
      }
    ]
