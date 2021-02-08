class MockPrestamosService
  def initialize
    puts 'initialize'
    @prestamos = [Prestamo.new(libro: Libro.new({ titulo: 'El Aleph', autor: 'Jorge Luis Borges'}), persona: Persona.new({ nombre: 'Medina'}))]
    puts @prestamos
  end

  def prestamos_pendientes
    puts 'prestamos pendientes'
    puts @prestamos
    @prestamos
  end

  def devolver(prestamo)

  end

  def buscar_por_id(prestamo_id)
    @prestamos.detect { |prestamo| prestamo.id === prestamo_id }
  end
end
