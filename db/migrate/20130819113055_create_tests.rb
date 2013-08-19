class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :name
      t.integer :level

      t.timestamps
    end
  end
end
