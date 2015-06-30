require 'spec_helper'

describe ProductsController do

  before do
    @order = Order.create!(order_attributes)
  end

  context "when not signed in" do

    before do
      session[:user_id] = nil
    end

    it "cannot access index" do
      get :index, order_id: @order

      expect(response).to redirect_to(new_session_url)
    end

    it "cannot access new" do
      get :new, order_id: @order

      expect(response).to redirect_to(new_session_url)
    end

    it "cannot access create" do
      post :create, order_id: @order

      expect(response).to redirect_to(new_session_url)
    end
  end
end
