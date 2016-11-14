`import Ember from 'ember'`

# This function receives the params `params, hash`
isequal = (param) ->
  param[0] == param[1]
IsequalHelper = Ember.Helper.helper isequal

`export { isequal }`

`export default IsequalHelper`
