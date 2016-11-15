`import Ember from 'ember'`

ArticleRoute = Ember.Route.extend

  model: ->
    Ember.A(@store.findAll('article'))

  setupController: (controller, model) ->
    @_super(controller, model)
    

  redirect: ->
    @transitionTo "article.index"

`export default ArticleRoute`
