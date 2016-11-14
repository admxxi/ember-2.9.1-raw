`import DS from 'ember-data'`

Article = DS.Model.extend {
  publishedTime : DS.attr("number")
  headline : DS.attr("string")
  teaser: DS.attr("string")
  keywords : DS.attr()
  links : DS.attr()
  idPublished: (->
    parseInt(@get('publishedTime'))
  ).property('publishedTime')
}

`export default Article`
