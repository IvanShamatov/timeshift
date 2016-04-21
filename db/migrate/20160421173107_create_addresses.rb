class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :city
      t.string :country
      t.string :name
      t.float :latitude
      t.float :longitude
      t.integer :event_id

      t.timestamps null: false
    end
  end
end
