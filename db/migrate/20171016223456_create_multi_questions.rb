class CreateMultiQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :multi_questions do |t|
      t.string :title
      t.integer :options
      t.string :options_selected
      t.string :required
      t.integer :survey_id

      t.timestamps
    end
  end
end
