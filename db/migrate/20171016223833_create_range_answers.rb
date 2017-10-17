class CreateRangeAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :range_answers do |t|

      t.timestamps
    end
  end
end
