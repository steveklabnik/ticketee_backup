# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(->
  # Since we are using the asset pipeline, it is best
  # to ensure that we are on the page that we truly want
  # to interact with here. Without this check unintended 
  # behavior is bound to happen.
  return unless $('form#new_ticket').length > 0
  
  $('a#add_another_file').on('click', ((e) ->
      # The missing e.preventDefault() was causing the page
      # to 'try' to interact with a link that did nothing,
      # thus reloading the page.
      e.preventDefault()
      url = "/files/new?number=" + $('#files input').length
      # Promises are rad that is why the 'then' was introduced
      $.ajax(
        url:     url
        method: 'GET' # Since we are submiting creation content should this be 'POST'
      ).then(
        # success
        ((data)->
          $('form#new_ticket #files').append(data)
        ), 
        # fail
        ((xhr)->
          # TODO: add error handling
        )
      )
    )
  )
)

