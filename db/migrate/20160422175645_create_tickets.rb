class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :ticket_type_id
      t.decimal :recorded_price
      t.string :code

      t.timestamps null: false
    end
  end
end
