`import Ember from 'ember'`

# This function receives the params `params, hash`
diffNow = (timestamp) ->
  now = moment();
  end = moment(parseInt(timestamp))
  days = now.diff(end, 'days')
  hours = now.diff(end, 'hours')
  if days > 24
    days + " Days ago."
  else if hours > 0
    hours + " Hours ago."
  else
    minutes = now.diff(end, 'minutes')
    minutes + " Minutes ago."

DiffNowHelper = Ember.Helper.helper diffNow

`export { diffNow }`

`export default DiffNowHelper`
