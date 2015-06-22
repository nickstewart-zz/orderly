require 'spec_helper'

describe OrdersController do
  before do
    @order = Order.create!(order_attributes)
  end

  context "when not admin" do
  	before do
  	  not_admin = User.create!(user_attributes(admin: false))
  	  session[:user_id] = not_admin.id
  	end

  	it "cannot access new" do
  	  get :new
  	  expect(response).to redirect_to(root_url)
    end
  	
  	it "cannot access create" do
  	  post :create
  	  expect(response).to redirect_to(root_url)
  	end
    
    it "cannot access edit" do
  	  get :edit, id: @order
  	  expect(response).to redirect_to(root_url)
  	end

  	it "cannot access update" do
  	  patch :update, id: @order
  	  expect(response).to redirect_to(root_url)
    end
  	
  	it "cannot asccess destroy" do
  	  delete :destroy, id: @order
  	  expect(response).to redirect_to(root_url)
    end
  end
end