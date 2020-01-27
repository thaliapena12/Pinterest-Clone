class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.string :link, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
    add_index :pins, :title, unique: true
    add_index :pins, :user_id, unique: true
  end
end
