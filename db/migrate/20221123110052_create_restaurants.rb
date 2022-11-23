class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :phone_number
      t.string :category
      t.integer :reviews

      t.timestamps
    end
  end
end
