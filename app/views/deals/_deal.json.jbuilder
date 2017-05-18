json.extract! deal, :id, :title, :description, :expiration, :created_at, :updated_at
json.url venue_deal_url(deal, format: :json)