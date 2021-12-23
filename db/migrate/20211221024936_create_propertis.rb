class CreatePropertis < ActiveRecord::Migration[6.0]
  def change
    create_table :propertis do |t|
      t.string :properties_name
      t.integer :rent
      t.string :adress
      t.integer :age_of_building
      t.text :note

      t.timestamps
    end
  end
end
