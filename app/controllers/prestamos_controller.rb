class PrestamosController < ApplicationController
  attr_reader :prestamoService
  attr_writer :prestamoService

  def initialize
    @prestamoService = PrestamosService.new
  end

  def activate_test_mode!
    @prestamoService = MockPrestamosService.new
  end

  def list
    render json: @prestamoService.prestamosPendientes.to_json(include: [:libro, :persona])
  end

  def devolver
    prestamo = @prestamoService.buscarPorId(params[:prestamo_id])
    prestamo.devolver
    @prestamoService.devolver(prestamo)
    render json: prestamo
  end

end
