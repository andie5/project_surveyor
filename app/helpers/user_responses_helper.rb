module UserResponsesHelper
  def one_answer?(question)
    question.options_selected == "Just One"
  end 
end
