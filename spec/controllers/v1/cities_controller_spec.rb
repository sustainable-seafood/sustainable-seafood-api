require 'rails_helper'

RSpec.describe V1::CitiesController, type: :controller do
  describe 'GET :index' do
    it 'returns status code 200 and renders cities index' do
      get :index
      expect(response).to render_template(:index)
      expect(response.status).to eq(200)
    end
  end

  describe 'GET :show' do
    before do
      @city = create(:city)
    end

    it 'returns status code 200 and renders cities show' do
      params = { id: @city.id }
      get :show, params
      expect(response).to render_template(:show)
      expect(response.status).to eq(200)
    end
  end
end
