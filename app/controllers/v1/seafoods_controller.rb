module V1
  class SeafoodsController < ApplicationController
    before_action :seafood_by_id, only: [:show]

    def index
      @seafoods = Seafood.all

      @seafoods = @seafoods.where(city_id: params[:city_id])                 if params[:city_id]
      @seafoods = @seafoods.where(seafood_type_id: params[:seafood_type_id]) if params[:seafood_type_id]

      if @seafoods
        render 'v1/seafoods/index', status: :ok
      else
        render json: { status: 'Cannot find Seafoods' }, status: :not_found
      end
    end

    def show
      render 'v1/seafoods/show', status: :ok
    end

    private

    def seafood_by_id
      @seafood = Seafood.find(params[:id])

      return true if @seafood
      render json: { status: 'Cannot find Seafood' }, status: :not_found
    end
  end
end
