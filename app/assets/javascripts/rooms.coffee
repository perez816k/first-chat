# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

id = document.URL.slice(document.URL.lastIndexOf("/")+1)

console.log(App.cable.subscriptions["subscriptions"]);

if App.cable.subscriptions["subscriptions"].length>1
  App.cable.subscriptions.remove(App.cable.subscriptions["subscriptions"][1]);

App.cable.subscriptions.create { channel: "RoomChannel", id: id},
  received: (data) ->
    $("#messages").append("<li>" + data.user + " > " + data.content + "</li>");


