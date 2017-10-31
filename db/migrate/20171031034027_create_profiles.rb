class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :avatar
      t.string :default_region_id
      t.string :default_platform_id

      t.timestamps
    end
  end
end
