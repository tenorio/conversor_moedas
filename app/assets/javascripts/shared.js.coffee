$(document).ready ->
  $loading = $('#loadingDiv').hide()

  $(document).ajaxStart(->
    $loading.show()
    return
  ).ajaxStop ->
    $loading.hide()
    return

window.callRateConverter = () ->
  $.ajax '/exchange',
    type: 'POST'
    dataType: 'json'
    data: {
      currency: $("#currency").val(),
      currency_destination: $("#currency_destination").val(),
      quantity: $("#quantity").val()
    }
    error: (jqXHR, textStatus, errorThrown) ->
      alert textStatus
    success: (data, text, jqXHR) ->
      $("#result").val(data.value)

return
