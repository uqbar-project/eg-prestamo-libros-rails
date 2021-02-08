class PrestamosController < ApplicationController
  def initialize
    if Rails.env.test? then
      @prestamo_service = MockPrestamosService.new
    else
      @prestamo_service = PrestamosService.new
    end
    @libro_service = LibrosService.new
    @persona_service = PersonasService.new
  end

  def list
    render json: @prestamo_service.prestamos_pendientes.to_json(include: [:libro, :persona])
  end

  def devolver
    prestamo = @prestamo_service.buscar_por_id(params[:id])
    @prestamo_service.devolver(prestamo)
    render json: prestamo
  end

  def prestar
    libro_id = params.dig(:libro, :id)
    libro = @libro_service.buscar_por_id(libro_id)
    persona_id = params.dig(:persona, :id)
    persona = @persona_service.buscar_por_id(persona_id)
    render json: @prestamo_service.prestar(libro, persona)
  end
end
