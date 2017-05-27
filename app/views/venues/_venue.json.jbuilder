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
  json.days(deal.days.each) do |day|
    json.id day.id
    json.name day.name
  end
  json.start_time deal.start_time.in_time_zone("EST").strftime("%I:%M %p")
  json.hours_active deal.hours_active
end