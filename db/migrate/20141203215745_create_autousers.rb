class CreateAutousers < ActiveRecord::Migration
  def change
    create_table :autousers do |t|
      t.integer :id_auto
      t.integer :id_user

      t.timestamps

    end
  end
end
