class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :img
      t.string :title
      t.text :content
      t.integer :price

      t.timestamps
    end
  end
end
