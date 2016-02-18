require 'rails_helper'

RSpec.describe V1::SpeciesController, type: :controller do
  before do
    @city = create(:city)
  end

  describe 'GET :index' do
    it 'returns status code 200 and renders species index' do
      params = { city_id: @city.id }
      get :index, params
      expect(response).to render_template(:index)
      expect(response.status).to eq(200)
    end
  end

  describe 'GET :show' do
    before do
      @species = create(:species, city: @city)
    end

    it 'returns status code 200 and renders species show' do
      params = { city_id: @city.id, id: @species.id }
      get :show, params
      expect(response).to render_template(:show)
      expect(response.status).to eq(200)
    end
  end
end
