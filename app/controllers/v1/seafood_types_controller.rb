module V1
  class SeafoodTypesController < ApplicationController
    before_action :city_by_id, only:         [:index]
    before_action :seafood_type_by_id, only: [:show]

    def index
      @seafood_types = @city.seafood_types
      if @seafood_types
        render 'v1/seafood_types/index', status: :ok
      else
        render json: { status: 'Cannot find Seafood Types' }, status: :not_found
      end
    end

    def show
      render 'v1/seafood_types/show', status: :ok
    end

    private

    def city_by_id
      @city = City.find(params[:city_id])

      return true if @city
      render json: { status: 'Cannot find City' }, status: :not_found
    end

    def seafood_type_by_id
      @seafood_type = SeafoodType.find(params[:id])

      return true if @seafood_type
      render json: { status: 'Cannot find Seafood Type' }, status: :not_found
    end
  end
end
