class CreateDefaultRolesDataUpdate < SeedMigrator::Updater
  def perform_update
    Role.enumeration_model_updates_permitted = true
    ['owner', 'moderator', 'operator'].each do | role |
      Role.create( name: role )
    end
  end

  # Overridden in case we need to roll back this migration.
  def undo_update
    # CreateDefaultRoles.where(:type_code => 'very_shiny').first.delete
  end
end
