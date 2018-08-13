import socket from './socket'
( function() {
  console.log("id: ", $('#id').data('id'))
  let id = $('#id').data('id');
  if (!id) {
    return;
  }

  let channel = socket.channel("event:" + id, {});

  channel.on("update_quantity", event => {
    console.log("Update: ", event);
    $('h4 span').text(event.quantity)
  })

  channel.join()
    .receive("ok", resp => {console.log("joined successfully event: " + id, resp)})
    .receive("error", resp => {console.log("Unable to join", resp)})
})();
