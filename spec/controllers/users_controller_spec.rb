require 'rails_helper'

describe UsersController, :type => :controller do 
  
  #let(:user) { User.create!(email: 'user1@123.com', password: '123456') } #original
  let(:user) { FactoryGirl.create(:user) }
  #let(:user2) { User.create!(email: 'user2@123.com', password: '123456') } #original
  #let(:user2) { FactoryGirl.create(:user, email: 'user2@123.com') } #iteration 2
  let(:user2) { FactoryGirl.create(:user) }  #final implementation with sequence usage
  
  describe "GET #show" do
    context 'User is logged in' do
      before do
        sign_in user
      end

      it 'loads correct user details' do
        get :show, params: { id: user.id }
        expect(response).to be_success
        expect(response).to have_http_status(200)
        expect(assigns(:user)).to eq user
      end 
    end

    context 'User is logged in and tries to access User2' do #I realize I duplicate code for the next few lines, is it appropriate to nest the "it '...' " test block below within the context above?
      before do
        sign_in user
      end

      it 'redirects to root' do
        get :show, params: { id: user2.id }
        expect(response).to redirect_to(root_path)
      end 
    end

    context 'No user is logged in' do
      it 'redirects to login' do
        get :show, params: { id: user.id }
        expect(response).to redirect_to(root_path)
      end
    end

  end

end