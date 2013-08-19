class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :thema
      t.text :content
      t.string :autor

      t.timestamps
    end
  end
end
