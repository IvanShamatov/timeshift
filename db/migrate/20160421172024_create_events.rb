class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :short_description
      t.text :full_description
      t.datetime :starts_at
      t.datetime :ends_at

      t.timestamps null: false
    end
  end
end
