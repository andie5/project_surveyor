class CreateMultiAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :multi_answers do |t|

      t.timestamps
    end
  end
end
