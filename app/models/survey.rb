class Survey < ApplicationRecord
  has_many :multi_questions, :dependent => :destroy
  has_many :range_questions, :dependent => :destroy
  has_many :multi_answers, :dependent => :destroy
  has_many :range_answers, :dependent => :destroy
end