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
end
