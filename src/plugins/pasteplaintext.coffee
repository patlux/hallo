# Hallo - a rich text editing jQuery UI widget
# (c) 2014 Patrick W.
((jQuery) ->
  jQuery.widget 'IKS.hallopasteonlyplaintext',
    toolbar: null
    options:
      editable: null
      toolbar: null
      uuid: ''

    _create: ->
      @_bindEvents()

    _bindEvents: ->

      @element.on 'paste', (event, data) ->
        event.preventDefault()
        text = (event.originalEvent || event).clipboardData.getData 'text/plain'
        document.execCommand('inserttext', false, text);

) jQuery
