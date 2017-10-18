class RenameTitleInMultiQuestions < ActiveRecord::Migration[5.0]
  def change
    rename_column :multi_questions, :title, :content
  end
end
