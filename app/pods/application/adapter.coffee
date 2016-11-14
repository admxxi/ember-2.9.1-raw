`import DS from 'ember-data'`;

Adapter = DS.RESTAdapter.extend

  host: 'http://sportdec.admxxi.com.br/api'
  suffix: '.json'
  pathForType: (type) ->
    # explicitly read from the file system
    @_super(type) + @get('suffix');


`export default Adapter;`
