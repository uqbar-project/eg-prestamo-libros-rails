class Prestamo < ApplicationRecord
  belongs_to :libro, autosave: true
  belongs_to :persona
  attr_reader :fecha_devolucion

  def initialize(attributes = {})
    super
    self.fecha_prestamo = Time.now
  end

  def validar
    raise 'El libro no está disponible' unless libro.esta_disponible?
  end

  def confirmarPrestamo
    libro.prestar
  end

  def devolver
    libro.devolver
    self.fecha_devolucion = Time.now
  end

end
