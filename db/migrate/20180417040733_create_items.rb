class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items, id: :uuid do |t|
      t.string :name
      t.string :icon
      t.string :kind
      t.string :rarity, default: 'common'
      t.integer :value, default: 1
      t.boolean :stackable, default: true

      t.timestamps
    end

    add_index :items, [:name, :icon], unique: true
  end
end
