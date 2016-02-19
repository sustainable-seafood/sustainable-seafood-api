require 'rails_helper'

RSpec.describe V1::SeafoodsController, type: :controller do
  before do
    @city    = create(:city)
    @species = create(:species, city: @city)
  end

  describe 'GET :index' do
   context 'with no extra params'
    it 'returns status code 200 and renders seafoods index' do
      get :index
      expect(response).to render_template(:index)
      expect(response.status).to eq(200)
    end
   context 'with extra options'
    it 'returns status code 200 and renders seafoods index' do
      params = { city_id: @city.id, species_id: @species.id }
      get :index, params
      expect(response).to render_template(:index)
      expect(response.status).to eq(200)
    end
  end

  describe 'GET :show' do
    before do
      @seafood = create(:seafood, species: @species)
    end

    it 'returns status code 200 and renders seafoods show' do
      params = { city_id: @city.id, species_id: @species.id, id: @seafood.id }
      get :show, params
      expect(response).to render_template(:show)
      expect(response.status).to eq(200)
    end
  end
end
