class CreateMatchings < ActiveRecord::Migration
  def change

    create_table :matchings do |t|
      t.integer :meal_maker_id
      t.integer :meal_recipient_id
      t.string :origin
      t.string :destination
      t.string :distance
      t.string :travel_time
      t.boolean :matching_locations

      t.timestamps
    end

  end
end
