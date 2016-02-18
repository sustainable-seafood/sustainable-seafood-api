module V1
  class SeafoodTypesController < ApplicationController
    before_action :city_by_id, only: [:index]

    def index
      @seafood_types = @city.seafood_types
      if @seafood_types
        render 'v1/seafood_types/index', status: :ok
      else
        render json: { status: 'Cannot find Seafood Types' }, status: :not_found
      end
    end

    private

    def city_by_id
      @city = City.find(params[:city_id])

      return true if @city
      render json: { status: 'Cannot find City' }, status: :not_found
    end
  end
end
