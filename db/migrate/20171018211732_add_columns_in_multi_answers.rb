class AddColumnsInMultiAnswers < ActiveRecord::Migration[5.0]
  def change
    add_column :multi_answers, :question_id, :integer
    add_column :multi_answers, :answer, :string
  end
end
