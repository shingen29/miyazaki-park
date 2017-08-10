class CreateParks < ActiveRecord::Migration[5.1]
  def change
    create_table :parks do |t|
      t.string :name
      t.string :address
      t.text :price
      t.string :image
      t.integer :capacity
      t.references :user, foreign_key: true
      t.integer :accepted_flag

      t.timestamps
    end
  end
end
