class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :type
      t.string :min_range
      t.integer :max_range
      t.string :options
      t.string :required
      t.integer :survey_id

      t.timestamps
    end
  end
end
