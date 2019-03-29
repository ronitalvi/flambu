json.extract! listing, :id, :item_id, :is_available, :sale_price, :price_per_time, :time_unit_id, :listing_type_id, :auction_begin_price, :created_at, :updated_at
json.url listing_url(listing, format: :json)
