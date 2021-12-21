class Properti < ApplicationRecord
  has_many :nearest_stations inverse_of: :properti
  accepts_nested_attributes_for :nearest_stations
end
