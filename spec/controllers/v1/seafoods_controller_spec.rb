require 'rails_helper'

RSpec.describe V1::SeafoodsController, type: :controller do
  before do
    @city         = create(:city)
    @seafood_type = create(:seafood_type, city: @city)
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
      params = { city_id: @city.id, seafood_type_id: @seafood_type.id }
      get :index, params
      expect(response).to render_template(:index)
      expect(response.status).to eq(200)
    end
  end

  describe 'GET :show' do
    before do
      @seafood = create(:seafood, seafood_type: @seafood_type, city: @city)
    end

    it 'returns status code 200 and renders seafoods show' do
      params = { city_id: @city.id, seafood_type_id: @seafood_type.id, id: @seafood.id }
      get :show, params
      expect(response).to render_template(:show)
      expect(response.status).to eq(200)
    end
  end
end
