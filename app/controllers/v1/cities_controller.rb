module V1
  class CitiesController < ApplicationController
    def index
      @cities = City.all
      render 'v1/cities/index'
    end
  end
end
