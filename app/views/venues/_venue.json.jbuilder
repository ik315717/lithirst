json.id venue.id
json.name venue.name
json.address venue.address
json.city venue.city
json.state venue.state
json.latitude venue.latitude
json.longitude venue.longitude
json.created_at venue.created_at
json.updated_at venue.updated_at

json.deals(venue.deals.each) do |deal|
  json.id deal.id
  json.title deal.title
  json.description deal.description
  json.expiration deal.expiration
  json.day deal.day
  json.start_time deal.start_time
  json.end_time deal.end_time
end