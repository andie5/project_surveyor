class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user_response

  has_one :survey, through: :user_response, source: :survey
end

