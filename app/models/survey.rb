class Survey < ApplicationRecord
  has_many :multi_questions, :dependent => :destroy
  has_many :range_questions, :dependent => :destroy
  has_many :multi_answers, :through => :multi_questions
  has_many :range_answers, :through => :range_questions
end
