class CreateAutos < ActiveRecord::Migration
  def change
    create_table :autos do |t|
      t.string :brand
      t.string :model
      t.integer :year
      t.integer :price_low
      t.integer :price_high
      t.integer :mpg_city
      t.integer :mpg_hwy
      t.text :comment

      t.timestamps

    end
  end
end
