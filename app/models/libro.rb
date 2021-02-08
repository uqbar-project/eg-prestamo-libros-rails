class Libro < ApplicationRecord
  PRESTADO = 'P'
  DISPONIBLE = 'D'

  def prestar
    self.estado = PRESTADO
  end

  def devolver
    self.estado = DISPONIBLE
  end

  def esta_disponible?
    self.estado == DISPONIBLE
  end
end
