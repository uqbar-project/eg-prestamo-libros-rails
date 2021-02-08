class PrestamosService

  def prestamos_pendientes
    Prestamo.all.where(fecha_devolucion: nil)
  end

  def devolver(prestamo)
    prestamo.devolver
    prestamo.save!
  end

  def prestar(libro, persona)
    prestamo = Prestamo.new({libro: libro, persona: persona})
    prestamo.validar
    prestamo.confirmarPrestamo
    prestamo.save!
  end

  def buscar_por_id(prestamo_id)
    Prestamo.find_by(id: prestamo_id)
  end
end
