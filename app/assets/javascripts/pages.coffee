# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  update_preview = (text) ->
    $.ajax
      url: '/api_markdown'
      type: 'POST'
      data: {text: text}
      success: (data) ->
        $('#preview').html(data)
        return
      error: (xhr, status, err) ->
        $('#preview').html 'エラー発生 ' + err
        return

  $('#page_body').on 'keyup change', ->
    update_preview($(this).val())
    return
