class PersonasController < ApplicationController
  def initialize
    @persona_service = PersonasService.new
  end

  def list
    render json: @persona_service.todas_las_personas
  end
end
