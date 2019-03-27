class Listing < ApplicationRecord
  belongs_to :item
  belongs_to :time_unit
  belongs_to :listing_type
end
