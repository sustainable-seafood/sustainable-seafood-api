module V1
  class SpeciesController < ApplicationController
    before_action :species_by_id, only: [:show]

    def index
      @species = Species.all
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

    def species_by_id
      @species = Species.find(params[:id])

      return true if @species
      render json: { status: 'Cannot find Species' }, status: :not_found
    end
  end
end
