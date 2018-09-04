# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

id = document.URL.slice(document.URL.lastIndexOf("/")+1)

console.log(App.cable.subscriptions["subscriptions"]);

App.cable.subscriptions.create { channel: "RoomChannel", id: id},
  received: (data) ->
    $("#messages").append("<hr style='margin-top: 10px; margin-bottom: 10px;'>");
    $("#messages").append("<li> <span class=\"message_user\">" + data.user + "</span> > <span class=\"message_content\">" + data.content + "</span> </li>");
    $("#messages").animate({ scrollTop: $('#messages')[0].scrollHeight}, 1000);


