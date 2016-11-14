`import Ember from 'ember'`

ArticleRoute = Ember.Route.extend

  model: ->
    Ember.A(@store.findAll('article'))

  setupController: (controller, model) ->
    @_super(controller, model)
    controller.set('model', Ember.computed.sort('model', 'headline:asc'))

  redirect: ->
    @transitionTo "article.index"

`export default ArticleRoute`
