class MockPrestamosService
  def initialize
    @prestamos = [Prestamo.new(libro: Libro.new({ titulo: 'El Aleph', autor: 'Jorge Luis Borges'}), persona: Persona.new({ nombre: 'Medina'}))]
  end

  def prestamosPendientes
    @prestamos
  end

  def devolver(prestamo)

  end

  def buscarPorId(prestamo_id)
    @prestamos.detect { |prestamo| prestamo.id === prestamo_id }
  end
end
