class UserResponse < ApplicationRecord
  has_many :answers
  belongs_to :survey
  accepts_nested_attributes_for :answers, source: :answer,
                                reject_if: :all_blank, 
                                allow_destroy: :true
end
