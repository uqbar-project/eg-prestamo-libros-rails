class Prestamo < ApplicationRecord
  belongs_to :libro
  belongs_to :persona

  def devolver
    @fecha_devolucion = Date.new
  end
end
