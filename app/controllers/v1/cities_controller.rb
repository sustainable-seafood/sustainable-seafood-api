module V1
  class CitiesController < ApplicationController
    before_action :city_by_id, only: [:show]

    def index
      @cities = City.all
      if @cities
        render 'v1/cities/index'
      else
        render json: { status: 'Cannot find Cities' }, status: :not_found
      end
    end

    def show
      render 'v1/cities/show'
    end

    private

    def city_by_id
      @city = City.find(params[:id])

      return true if @city
      render json: { status: 'Cannot find City' }, status: :not_found
    end
  end
end
