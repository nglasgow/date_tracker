class CreateTrackers < ActiveRecord::Migration
  def change
    create_table :trackers do |t|
      t.string :date
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
