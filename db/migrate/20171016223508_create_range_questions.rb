class CreateRangeQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :range_questions do |t|
      t.string :title
      t.string :min_range
      t.integer :max_range
      t.string :required
      t.integer :survey_id
      
      t.timestamps
    end
  end
end
