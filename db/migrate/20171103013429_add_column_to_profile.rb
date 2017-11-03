class AddColumnToProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :pro, :boolean, :default => false
  end
end
