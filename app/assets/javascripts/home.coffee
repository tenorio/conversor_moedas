$(document).ready ->
  $("#currency, #quantity, #currency_destination").on "change", ->
    callRateConverter()
    return false

  $("#swap").on 'click', ->
    currency = $("#currency").val()
    currency_destination = $("#currency_destination").val()

    $("#currency_destination").val(currency)
    $("#currency").val(currency_destination)

    callRateConverter()
    return false