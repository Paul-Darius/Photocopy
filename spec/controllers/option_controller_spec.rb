require 'rails_helper'

RSpec.describe OptionController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #cover" do
    it "returns http success" do
      get :cover
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #binder" do
    it "returns http success" do
      get :binder
      expect(response).to have_http_status(:success)
    end
  end

end
