class MultiQuestion < ApplicationRecord
  belong_to :survey
  has_many :multi_answers, :dependent => :destroy
  has_many :choices
end
