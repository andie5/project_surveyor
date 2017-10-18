class RenameTitleInRangeQuestions < ActiveRecord::Migration[5.0]
  def change
    rename_column :range_questions, :title, :content
  end
end
