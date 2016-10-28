require 'rails_helper'

describe Product do

  context "when the product has comments" do 
    before do
      @product = Product.create!(name: "web design")
      @user = User.create!(email: "abc@123.com", password: "123456")
      @product.comments.create!(rating: 1, body: "bad", user: @user)
      @product.comments.create!(rating: 3, body: "fair", user: @user)
      @product.comments.create!(rating: 5, body: "good", user: @user)
    end

    it "returns the average rating of all comments" do
      expect(@product.comments.average(:rating)).to eq 3
    end
  end 

  context "when the product is not valid" do 

    it "returns an invalid error" do
      expect(Product.new(description: "custom responsive")).not_to be_valid
    end
  end   
end