class Question < ApplicationRecord
  belongs_to :survey
  has_many :answers, :dependent => :destroy
  has_many :choices, inverse_of: :question
  # nested form
  accepts_nested_attributes_for :choices, 
                                reject_if: :all_blank, 
                                allow_destroy: :true
end
