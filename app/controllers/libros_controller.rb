class LibrosController < ApplicationController

  def initialize
    @prestamo_service = LibrosService.new
  end

  def list
    render json: @prestamo_service.libros_prestables(params[:valor_a_buscar])
  end
end
