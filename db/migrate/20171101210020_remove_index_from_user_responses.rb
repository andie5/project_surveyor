class RemoveIndexFromUserResponses < ActiveRecord::Migration[5.0]
  def change
    remove_index(:user_responses, :name => 'index_user_responses_on_survey_id') 
  end
end
