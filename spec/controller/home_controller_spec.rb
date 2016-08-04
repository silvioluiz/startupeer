require 'rails_helper'

describe HomeController, type: :controller do
  describe 'GET next' do
    it 'has a status code' do
      expect(Project).to receive(:random)
      get :index
    end
  end
end
