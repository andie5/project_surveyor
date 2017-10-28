class CreateUserResponses < ActiveRecord::Migration[5.0]
  def change
    create_table :user_responses do |t|
      t.integer :survey_id
      t.timestamps
    end
    add_index :user_responses, [:survey_id], unique: true
  end
end
