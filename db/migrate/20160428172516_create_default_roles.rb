class CreateDefaultRoles < ActiveRecord::Migration
  include TimeshiftDataUpdate

  def up
    apply_update '20160428172516_create_default_roles_data_update'
  end

  def down
    revert_update '20160428172516_create_default_roles_data_update'
  end
end
