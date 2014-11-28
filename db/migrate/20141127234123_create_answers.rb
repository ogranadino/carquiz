class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :id_question
      t.integer :id_user
      t.string :answer
      t.integer :likes

      t.timestamps

    end
  end
end
