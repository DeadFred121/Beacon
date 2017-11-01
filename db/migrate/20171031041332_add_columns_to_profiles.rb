class AddColumnsToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_reference :profiles, :region, foreign_key: true
    add_reference :profiles, :platform, foreign_key: true
    add_reference :profiles, :user, foreign_key: true
  end
end
