$(document).ready ->
  $('form').submit ->
    if $('form').attr('action') == '/exchange'
      callRateConverter()
      return false
