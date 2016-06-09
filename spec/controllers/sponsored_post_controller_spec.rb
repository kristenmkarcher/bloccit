require 'rails_helper'

RSpec.describe SponsoredPostController, type: :controller do

  describe "GET show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
    it "renders the #show view" do
      get :show, {id: my_sponsored_post.id}
      expect(response).to render_template :show
    end

    it "assigns my_sponsored_post to @sponsored_post" do
      get :show, {id: my_sponsored_post.id}
      expect(assigns(:sponsored_post)).to eq(my_sponsored_post)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end

    it "renders the #new view" do
      get :new
      expect(response).to render_template :new
    end

    it "initializes @sponsored_post" do
      get :new
      expect(assigns(:sponsored_post)).not_to be_nil
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end

    it "renders the #edit view" do
      get :edit, {id: my_sponsored_post.id}
      expect(response).to render_template :edit
    end

    it "assigns sponsored_post to be updated to @sponsored_post" do
      get :edit, {id: my_sponsored_post.id}
      sponspred_post_instance = assigns(:sponsored_post)

      expect(sponsored_post_instance.id).to eq my_sponsored_post.id
      expect(sponsored_post_instance.name).to eq my_sponsored_post.name
      expect(sponsored_post_instance.description).to eq my_sponsored_post.description
    end
  end
end
