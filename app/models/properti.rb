class Properti < ApplicationRecord
  # has_many :nearest_stations inverse_of: :properti
  # accepts_nested_attributes_for :nearest_stations
  validates :properties_name, :rent, :adress, :age_of_building, presence: true
end
