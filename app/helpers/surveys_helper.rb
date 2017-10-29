module SurveysHelper

  def asterik?(question)
    question.required ? "*" : ""
  end
end
