class API::V1::RubricsController < ApplicationController
  respond_to :json

  def index
    render json: Rubric.all
  end
end
