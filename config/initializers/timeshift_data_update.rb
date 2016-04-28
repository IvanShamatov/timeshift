# Facilitates conducting data migrations.
module TimeshiftDataUpdate
  include SeedMigrator

  # Returns the path where data updates are
  def root_updates_path
    Timeshift::Application.root.join('db','data_updates')
  end

  # Updates will run in production, but not in test an dev.
  def should_run?(_)
    true #Rails.env.production?
  end

end
