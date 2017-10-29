class UserResponse < ApplicationRecord
  has_many :answers
  belongs_to :survey
  accepts_nested_attributes_for :answers,
                                reject_if: :all_blank, 
                                allow_destroy: :true

 def build_answers(questions)
    questions.each { |question| answers.build if question.options_selected == "Just One" }
  end
 
end

