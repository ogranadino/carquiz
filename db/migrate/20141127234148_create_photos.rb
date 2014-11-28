class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :id_auto
      t.string :link
      t.text :comment

      t.timestamps

    end
  end
end
