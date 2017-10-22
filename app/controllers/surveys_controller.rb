class SurveysController < ApplicationController

  def index
    @surveys = Survey.all
  end

  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(survey_params)
    if @survey.save
      redirect_to survey_path(@survey)
      flash[:sucess] = "Survey created successfully"
    else
      redirect_to new_survey_path
      flash[:error] = "Survey not created"
    end
  end

  def show
    @survey = Survey.find(params[:id])

  end

  def edit
    @survey = Survey.find(params[:id])
    @question_type ||= params[:question_type]
  end

  def update
    @survey = Survey.find(params[:id])

    if params[:question_type] == "Multiple Choice"
      redirect_to new_survey_question_path(@survey)
      flash.now[:success] = "Created Multiple Choice Question"
    elsif params[:choice_type] == "Range Question"
      redirect_to new_survey_question_path(@survey)
      flash.now[:success] = "Created Range Question"
    end
  end


  private

  def survey_params
    params.require(:survey).permit(:title, :description)
  end


end
