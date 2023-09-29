class CreateThings < ActiveRecord::Migration[7.0]
  def change
    create_table :things do |t|
      t.string :name, null: false
      t.text :description, null: false

      t.timestamps
    end
    add_index :things,
      :name,
      name: "idx_things_name"
  end
end
