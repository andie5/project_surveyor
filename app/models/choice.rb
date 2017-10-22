class Choice < ApplicationRecord
  belongs_to :question, inverse_of: :choices
  has_many :answers
  # inverse_of allow the objects to properly handle presence validations during nested creation. 
end
