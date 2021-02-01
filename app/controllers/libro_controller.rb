class LibroController < ApplicationController

  def list
    render json: Libro.all
  end
end
