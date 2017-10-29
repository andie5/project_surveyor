class Addtoanswers < ActiveRecord::Migration[5.0]
  def change
    add_column :answers, :user_response_id, :integer
    add_column :answers, :choice_id, :integer
  end
end
