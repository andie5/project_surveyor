class Choice < ApplicationRecord
  belongs_to :question, inverse_of: :choices
  has_many :answers
  validates_presence_of :option
end
