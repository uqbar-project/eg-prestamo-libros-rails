require 'rails_helper'

describe PrestamosController, :type => :controller do
  # @controller.prestamoService = MockPrestamosService.new
  describe "List" do
    it "prestamos#list" do
      # allow(@controller.prestamoService).to receive(:prestamosPendientes).and_return(MockPrestamosService.new.prestamosPendientes)
      @controller.prestamoService = MockPrestamosService.new
      get :list
      assert_response :success

      # assert_equal "[]", @response.body
    end
  end
end
