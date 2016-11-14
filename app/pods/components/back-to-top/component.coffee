`import Ember from 'ember'`

BackToTopComponent = Ember.Component.extend

  onInsert: (->
    $(document).ready ->
      $(window).scroll ->
        if $(this).scrollTop() > 50
          $('#back-to-top').fadeIn()
        else
          $('#back-to-top').fadeOut()
        return
      # scroll body to 0px on click
      $('#back-to-top').click ->
        $('#back-to-top').tooltip 'hide'
        $('body,html').animate { scrollTop: 0 }, 800
        false
      $('#back-to-top').tooltip 'show'
      
  ).on('didInsertElement')


`export default BackToTopComponent`
