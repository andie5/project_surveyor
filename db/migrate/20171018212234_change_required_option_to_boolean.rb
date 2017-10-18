class ChangeRequiredOptionToBoolean < ActiveRecord::Migration[5.0]
  def change
    change_column :multi_questions, :required, :boolean
    change_column :range_questions, :required, :boolean
  end
end
