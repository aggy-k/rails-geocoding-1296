class Flat < ApplicationRecord
  validates :name, :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
