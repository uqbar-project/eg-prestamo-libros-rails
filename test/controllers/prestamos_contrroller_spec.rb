require 'rails_helper'

describe PrestamosController, :type => :controller do
  describe "List" do
    it "prestamos#list" do
      get :list
      assert_response :success
      assert_equal 1, JSON.parse(@response.body).size
    end
  end
end
