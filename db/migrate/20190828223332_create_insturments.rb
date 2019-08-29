class CreateInsturments < ActiveRecord::Migration[5.2]
  def change
    create_table :insturments do |t|
      t.string :brand
      t.string :model
      t.text :description
      t.string :condition
      t.string :finish
      t.string :title
      t.integer :price

      t.timestamps
    end
  end
end
