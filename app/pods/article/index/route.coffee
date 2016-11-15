`import Ember from 'ember'`


ArticleIndexRoute = Ember.Route.extend

  model: ->
    @modelFor('article')

  setupController: (controller, model) ->
    @_super(controller, model)
    

`export default ArticleIndexRoute`
