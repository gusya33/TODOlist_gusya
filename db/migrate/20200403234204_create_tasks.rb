class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.integer :user_id,               null: false, foreign_key: true
      t.string :category_id,           null: false, foreign_key: true
      t.string  :name,             null: false
      t.timestamps
    end
  end
end
