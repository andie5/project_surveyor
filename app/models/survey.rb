class Survey < ApplicationRecord
  has_many :questions, :dependent => :destroy
  has_many :choices, :through => :questions
  has_many :answers, :through => :questions
  has_many :user_responses
  
  validates_presence_of :title, :description

  def check_question_type(type)
    s = ""
    if self.type == "Multiple Choice"
      s = "multi"
    else
      s = "range"
    end
  end
end
