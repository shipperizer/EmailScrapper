# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

confirmExit = ->
  $.ajax
    type: "POST"
    url: "emails/create"
    data: email: $("#email_email").val()
	beforeSend: (xhr, settings) ->
      xhr.setRequestHeader "accept", "*/*;q=0.5, " + settings.accepts.script
      

  return
window.onbeforeunload = confirmExit