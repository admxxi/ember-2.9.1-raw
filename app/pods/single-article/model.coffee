`import DS from 'ember-data'`

SingleArticle = DS.Model.extend {
  publishedTime : DS.attr("number")
  headline : DS.attr("string")
  teaser: DS.attr("string")
  keywords : DS.attr()
  links: DS.attr()
}

`export default SingleArticle`
