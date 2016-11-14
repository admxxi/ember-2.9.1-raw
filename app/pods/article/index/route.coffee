`import Ember from 'ember'`


ArticleIndexRoute = Ember.Route.extend

  model: ->
    @modelFor('article')

  setupController: (controller, model) ->
    @_super(controller, model)
    controller.set('model', model.sortBy('headline:desc'))

`export default ArticleIndexRoute`
