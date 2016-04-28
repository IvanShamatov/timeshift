class CreateEnumRole < ActiveRecord::Migration

  def change
    create_enum :role
  end

end
