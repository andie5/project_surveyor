class QuestionsController < ApplicationController

  def new
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.build
    # takes the name of one or more associations that you'd like to load at the same time as your original object and brings them into memory.
    @survey.questions.includes(:choices)
  end

  def create
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.build(question_params)

    @question_type = params[:question_type]
    puts "The question type is #{@question_type}"

    @question.question_type = params[:question_type]
    if @question.save
      redirect_to edit_survey_question_path(@survey, @question)
      flash[:success] = "New question created successfully"
    else
      redirect_to survey_path
      flash[:error] = "New question not created"
    end
  end

  def edit
    @survey = Survey.find(params[:survey_id])
    @question = Question.find(params[:id])
    # Check if the current number of option choices created is less than what has been specified - as you only what to build the options the first time you edit/create the question, you don't want to keep building the option parameters each time
    if @question.choices.count < @question.no_options
      count = @question.no_options - @question.choices.count 
      count.times do 
        @question.choices.build
      end
    end
  end

  def update
    @survey = Survey.find(params[:survey_id])
    @question = Question.find(params[:id])

    if @question.update_attributes(question_params)
      redirect_to edit_survey_question_path(@survey, @question)
      flash[:success] = "Question updated sucessfully"
    else
      render :edit
      flash[:error] = "Question not updated"
    end
  end

  def destroy
    session[:return_to] ||= request.referer
    @question = Question.find(params[:id])
    @survey = @question.survey

    if @question.destroy
      flash[:success] = "Question deleted successfully."
      redirect_to survey_path(@survey)
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
