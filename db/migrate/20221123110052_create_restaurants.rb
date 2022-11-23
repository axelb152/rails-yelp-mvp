# frozen_string_literal: true

class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :phone_number
      t.string :category

      t.timestamps
    end
  end
end
