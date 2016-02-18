module V1
  class SpeciesController < ApplicationController
    before_action :city_by_id, only:         [:index]
    before_action :species_by_id, only: [:show]

    def index
      @species = @city.species
      if @species
        render 'v1/species/index', status: :ok
      else
        render json: { status: 'Cannot find Species' }, status: :not_found
      end
    end

    def show
      render 'v1/species/show', status: :ok
    end

    private

    def city_by_id
      @city = City.find(params[:city_id])

      return true if @city
      render json: { status: 'Cannot find City' }, status: :not_found
    end

    def species_by_id
      @species = Species.find(params[:id])

      return true if @species
      render json: { status: 'Cannot find Species' }, status: :not_found
    end
  end
end
