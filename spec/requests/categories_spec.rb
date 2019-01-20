require 'rails_helper'

RSpec.describe "Categories", type: :request do
  describe "GET /api/categories" do
    it "return all list categories" do
      get categories_path
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /api/categories/:id" do
    let(:category) { create :category }
    it "return one category" do
      get category_path category.id
      expect(response).to have_http_status(200)
    end
  end
end

