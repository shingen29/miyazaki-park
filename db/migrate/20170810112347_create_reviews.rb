class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :content
      t.integer :value
      t.references :user, foreign_key: true
      t.references :park, foreign_key: true

      t.timestamps
    end
  end
end
