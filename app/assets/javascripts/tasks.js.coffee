# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ =>
  $('.task-status').click (event) ->
    t = event.target
    new_status = ''
    new_formatted_status = ''
    if $(t).text() == '□'
      new_formatted_status = 'レ'
      new_status = 'done'
    else if $(t).text() == 'レ'
      new_formatted_status = '×'
      new_status = 'canceled'
    else
      new_formatted_status = '□'
      new_status = 'new'

    id = t.id.replace('task_', '')

    $.post '/tasks/' + id, {'task[status]': new_status, _method: 'put'}, ->
      $(t).text(new_formatted_status)

 