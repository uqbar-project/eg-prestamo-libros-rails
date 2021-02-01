class PrestamosController < ApplicationController
  def index
    render json: Prestamo.all.to_json(include: [:libro, :persona])
  end
end
