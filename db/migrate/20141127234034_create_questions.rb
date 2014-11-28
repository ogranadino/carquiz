class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :id_auto
      t.integer :id_user
      t.string :question
      t.integer :likes

      t.timestamps

    end
  end
end
