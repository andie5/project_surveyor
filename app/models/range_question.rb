class RangeQuestion < ApplicationRecord
  belong_to :survey
  has_many :range_answers, :dependent => :destroy
end
