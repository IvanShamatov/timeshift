class CreateTicketTypes < ActiveRecord::Migration
  def change
    create_table :ticket_types do |t|
      t.integer :event_id
      t.string :title
      t.integer :limit
      t.decimal :price
      t.datetime :starts_at
      t.datetime :ends_at

      t.timestamps null: false
    end
  end
end
