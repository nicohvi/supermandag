# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('.vote').on 'click', (event) ->
    event.preventDefault()

    $.ajax({ type: 'POST', url: @.href, data: 'movie-id': $(@).data('movie-id') }).
      done( (num_votes) -> $('.vote').remove() $(@).sibling('.num_votes').html(num_votes)).
      error( (message) -> alert(message.responseText))
