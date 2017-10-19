class Survey < ApplicationRecord
  has_many :questions, :dependent => :destroy
  has_many :answers, :through => :questions
  # accepts_nested_attributes_for :questions,
                                # :reject_if => :all_blank


  def check_question_type(type)
    s = ""
    if self.type == "Multiple Choice"
      s = "multi"
    else
      s = "range"
    end
  end
end
