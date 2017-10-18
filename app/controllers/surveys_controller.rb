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
      redirect_to survey_path
      flash[:sucess] = "Survey created successfully"
    else
      redirect_to new_survey_path
      flash[:error] = "Survey not created"
    end
  end

  def show
    @survey = Survey.find(params[:id])
# find a way to retun the question_type

  end


  private

  def survey_params
    params.require(:survey).permit(:title, :description)
  end


end
