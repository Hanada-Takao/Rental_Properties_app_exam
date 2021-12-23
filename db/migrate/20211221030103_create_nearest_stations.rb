class CreateNearestStations < ActiveRecord::Migration[6.0]
  def change
    create_table :nearest_stations do |t|
      t.string :route_name
      t.string :satation_name
      t.integer :walking_taime
      t.references :properti, null: false, foreign_key: true

      t.timestamps
    end
  end
end
