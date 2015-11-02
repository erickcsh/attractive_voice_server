class ResultsController < ApplicationController

  def create
    result = Result.new(result_params)
    if result.save
      render json: result, status: 200
    else
      render json: { error: 'Result could not be saved' }, status: 422
    end
  end

  private

  def result_params
    params.require(:result).permit(:result, :user)
  end

end
