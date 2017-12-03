class UserResponse < ApplicationRecord
  has_many :answers, inverse_of: :user_response
  belongs_to :survey
  accepts_nested_attributes_for :answers,
                                reject_if: :all_blank, 
                                allow_destroy: :true
  # validate :select_one_answer

 def build_answers(questions)
    questions.each { |question| answers.build if question.options_selected == "Just One" }
  end


  # def select_one_answer
  #   errors.add(:answer_ids, "Must select one answer!") if self.answer_ids.all? { |id| id.blank? } 
  # end
 
end

