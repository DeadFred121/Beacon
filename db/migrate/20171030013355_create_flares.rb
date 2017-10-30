class CreateFlares < ActiveRecord::Migration[5.1]
  def change
    create_table :flares do |t|
      t.references :user, foreign_key: true
      t.references :region, foreign_key: true
      t.references :platform, foreign_key: true
      t.string :game
      t.string :description

      t.timestamps
    end
  end
end
