$(document).ready ->

  closeAlert = ->
    $('.fadeout-alert').alert('close')

  setTimeout(closeAlert, 3000)

  $('#tablesorter').tablesorter
    headers:
      4:
        sorter: false
      5:
        sorter: false
  

