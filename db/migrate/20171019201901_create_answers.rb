class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.integer :question_id
      t.string :question_type 
      t.string :answer
      t.timestamps

    end
    add_index :answers, [:question_id, :question_type], unique: true
  end
end
