require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  describe 'GET #home' do
    it 'returns http success' do
      get :home
      expect(response).to be_successful
    end

    it 'includes the meta title' do
      get :home
      expect(response.body).to include('Home • DragonSlay')
    end
  end
end
