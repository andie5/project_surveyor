class UserResponsesController < ApplicationController

  def index
    @survey = Survey.find(params[:survey_id])
    @user_responses = UserResponse.all
    # @questions = @survey.questions.includes(:choices)
    @questions = @survey.questions
  end

  def new
    @survey = Survey.find(params[:survey_id])
    @user_response = @survey.user_responses.build
    @questions = @survey.questions.includes(:choices)
    @user_response.build_answers(@questions)
  end

  def create
    @survey = Survey.find(params[:survey_id])
    @user_response = @survey.user_responses.build
    @questions = @survey.questions.includes(:choices)

    if @user_response.update(user_response_params)
      redirect_to surveys_path
      flash[:success] = "User answers to question created successfully and survey submitted"
    else
      redirect_to new_survey_user_response_path(@survey)
      flash[:error] = "User answers to questions not created and survey not submitted"
    end
  end

  # def edit
  #   @survey = Survey.find(params[:survey_id])
  # end

  private

  def user_response_params
    params.require(:user_response).permit(:survey_id, 
                                     :answers_attributes => [:id,
                                                        :question_id,
                                                        :question_type,
                                                        :choice_id,
                                                        :user_response_id
                                                        ]
                                     )
  end
end
