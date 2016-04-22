class AddColumnsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :header_image, :string
    add_column :events, :headline, :string
  end
end
