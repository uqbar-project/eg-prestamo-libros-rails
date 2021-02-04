class Prestamo < ApplicationRecord
  belongs_to :libro
  belongs_to :persona

  def devolver
    self.fecha_devolucion = Time.zone.now.to_datetime
  end

end
