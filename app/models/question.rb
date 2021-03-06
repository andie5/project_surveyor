class Question < ApplicationRecord
  belongs_to :survey
  has_many :answers, :dependent => :destroy
  has_many :choices, inverse_of: :question,
                    :dependent => :destroy
  # nested form
  accepts_nested_attributes_for :choices, 
                                reject_if: :all_blank, 
                                allow_destroy: :true
  validates_presence_of :question_type
  validates_presence_of :no_options, :question_type, :required, on: :update
end
