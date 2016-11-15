`import Ember from 'ember'`
`import LazyImage from 'ember-lazy-image/components/lazy-image'`;

ArticleIndexController = Ember.Controller.extend
  sortProperties: ['idPublished:desc']
  computedModel: Ember.computed.sort('model', 'sortProperties')

  actions:
    sortBy: (property, el) ->
      if $("#" + el).attr('param') == 'asc'
        orderBy = 'asc'
        $("#" + el).attr('param','desc')
        $("#" + el + ' .glyphicon').addClass('glyphicon-triangle-top').removeClass('glyphicon-triangle-bottom')
      else
        orderBy = 'desc'
        $("#" + el).attr('param','asc')
        $("#" + el + ' .glyphicon').addClass('glyphicon-triangle-bottom').removeClass('glyphicon-triangle-top')
      @set('sortProperties', [property+':'+orderBy])

`export default ArticleIndexController`
