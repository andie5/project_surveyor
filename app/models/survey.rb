class Survey < ApplicationRecord
  has_many :questions, :dependent => :destroy
  has_many :choices, :through => :questions
  has_many :answers, :through => :questions
  has_many :user_responses
  
  validates_presence_of :title, :description
end
