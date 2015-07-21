require 'rails_helper'

RSpec.describe AlbumsController, type: :controller do

let(:album) {Album.create(album_name: 'Lateralus')}

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, id: album.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit, id: album.id
      expect(response).to have_http_status(:success)
    end
  end

end
