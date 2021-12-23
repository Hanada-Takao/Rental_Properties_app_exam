class Properti < ApplicationRecord
  has_many :nearest_stations, dependent: :destroy
  accepts_nested_attributes_for :nearest_stations, allow_destroy: true
  validates :properties_name, :rent, :adress, :age_of_building, presence: true
end
