class CreateDefaultAdminUser < ActiveRecord::Migration
  include TimeshiftDataUpdate

  def up
    apply_update '20160428173040_create_default_admin_user_data_update'
  end

  def down
    revert_update '20160428173040_create_default_admin_user_data_update'
  end
end
