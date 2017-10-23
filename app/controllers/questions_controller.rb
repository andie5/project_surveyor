class QuestionsController < ApplicationController

  def new
    @survey = Survey.find(params[:survey_id])
    @question = Question.new


    @question_type = params[:question][:question_type]
    @options_selected = params[:question][:options_selected]
    @required = params[:question][:required]
    @num_options = params[:question][:options]

    # takes the name of one or more associations that you'd like to load at the same time as your original object and brings them into memory.
    @survey.questions.includes(:choices)

     # Build the choices
    @num_options.to_i.times { @question.choices.build }

  end

  def create
    @question = Question.new(question_params)
    @survey = @question.survey
    if @question.save
      redirect_to survey_question_path(@survey, @question)
      flash[:success] = "New question created successfully"
    else
      redirect_to survey_path
      flash[:error] = "New question not created"
    end
  end

  def destroy
    session[:return_to] ||= request.referer
    @question = Question.find(params[:id])
    @survey = @question.survey

    if @question.destroy
      flash[:success] = "Question deleted successfully."
      redirect_to edit_survey_question_path(@survey, @question)
    else
      flash[:error] = "Question not deleted"
      redirect_to session.delete(:return_to)
    end
  end

 private
  def question_params
    params.require(:question).permit(:question_type, 
                                     :content, 
                                     :min_range,
                                     :max_range,
                                     :no_options,
                                     :options_selected,
                                     :required,
                                     :survey_id,
                                     :choices_attributes => [:option,
                                                            :_destroy]
                                     )
  end

end
