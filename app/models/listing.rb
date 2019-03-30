class Listing < ApplicationRecord
  belongs_to :item, dependent: :destroy
  belongs_to :time_unit, required: false
  belongs_to :listing_type, required: false
end
