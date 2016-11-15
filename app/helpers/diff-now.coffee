`import Ember from 'ember'`

# This function receives the params `params, hash`
diffNow = (timestamp) ->
  now = moment();
  end = moment(parseInt(timestamp))
  days = now.diff(end, 'days')
  hours = now.diff(end, 'hours')
  if days > 24
    days + " days ago"
  else if hours > 0
    hours + " hours ago"
  else
    minutes = now.diff(end, 'minutes')
    minutes + " minutes ago"

DiffNowHelper = Ember.Helper.helper diffNow

`export { diffNow }`

`export default DiffNowHelper`
