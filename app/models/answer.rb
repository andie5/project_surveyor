class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user_response
  # validate :select_an_answer

  # def select_an_answer
  #   errors.add(:answer_ids, "Must select one option!") if self.answer_ids.all? { |id| id.blank? } 

end
