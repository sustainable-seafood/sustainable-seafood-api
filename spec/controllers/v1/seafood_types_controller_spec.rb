require 'rails_helper'

RSpec.describe V1::SeafoodTypesController, type: :controller do
  before do
    @city = create(:city)
  end

  describe 'GET :index' do
    it 'returns status code 200 and renders seafood_types index' do
      params = { city_id: @city.id }
      get :index, params
      expect(response).to render_template(:index)
      expect(response.status).to eq(200)
    end
  end

  describe 'GET :show' do
    before do
      @seafood_type = create(:seafood_type, city: @city)
    end

    it 'returns status code 200 and renders seafood_types show' do
      params = { city_id: @city.id, id: @seafood_type.id }
      get :show, params
      expect(response).to render_template(:show)
      expect(response.status).to eq(200)
    end
  end
end
