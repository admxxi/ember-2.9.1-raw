`import Ember from 'ember'`

# This function receives the params `params, hash`
formatDatetime = (timestamp) ->
  date = new Date(parseInt(timestamp));
  moment(date).format('MMMM Do YYYY h:mma')

FormatDatetimeHelper = Ember.Helper.helper formatDatetime

`export { formatDatetime }`

`export default FormatDatetimeHelper`
