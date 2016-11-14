`import Ember from 'ember'`

ArticleViewRoute = Ember.Route.extend

  model: (params) ->
    Ember.RSVP.hash({
      single: Ember.A($.getJSON("http://sportdec.admxxi.com.br/api/"+params.article_id+".json")).success((data) ->
        data
      ).error ->
        Ember.RSVP.reject("FAIL");
      article: @modelFor('article').filterBy('idPublished', parseInt(params.article_id))
    })
  setupController: (controller, model) ->
    @_super(controller, model)
    controller.set('model', model)

  actions:
    error: (reason) ->
      alert 'Article not found'
      @transitionTo('article.index')





`export default ArticleViewRoute`
