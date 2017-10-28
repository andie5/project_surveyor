class UserResponsesController < ApplicationController

  def edit
    @survey = Survey.find(params[:survey_id])
  end
end
