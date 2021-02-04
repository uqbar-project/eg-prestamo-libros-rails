class PrestamosService

  def prestamosPendientes
    Prestamo.all.where(fecha_devolucion: nil)
  end

  def devolver(prestamo)
    prestamo.save
  end

  def buscarPorId(prestamo_id)
    Prestamo.find_by(id: prestamo_id)
  end
end
