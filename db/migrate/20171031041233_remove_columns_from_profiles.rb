class RemoveColumnsFromProfiles < ActiveRecord::Migration[5.1]
  def change
    remove_column :profiles, :default_region_id, :string
    remove_column :profiles, :default_platform_id, :string
  end
end
