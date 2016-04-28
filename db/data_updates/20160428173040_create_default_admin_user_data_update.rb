class CreateDefaultAdminUserDataUpdate < SeedMigrator::Updater
  def perform_update
    AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
  end

  # Overridden in case we need to roll back this migration.
  def undo_update
    # CreateDefaultAdminUser.where(:type_code => 'very_shiny').first.delete
  end
end
