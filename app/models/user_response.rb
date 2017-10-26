class UserResponse < ApplicationRecord
  has_many :answers
  belog_to :question
  belongs_to :survey
end
