class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :question_type
      t.string :content
      t.string :min_range
      t.integer :max_range
      t.integer :no_options
      t.string :options_selected
      t.boolean :required
      t.integer :survey_id
      t.timestamps
    end
  end
end
