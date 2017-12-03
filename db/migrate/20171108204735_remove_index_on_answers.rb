class RemoveIndexOnAnswers < ActiveRecord::Migration[5.0]
  def change
    remove_index(:user_responses, :name => 'index_answers_on_question_id_and_question_type')
  end
end
