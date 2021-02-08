class LibrosService
  def libros_prestables(valor_a_buscar)
    Libro.where("titulo LIKE (?) and estado = 'D'", "%#{valor_a_buscar}%")
  end

  def buscar_por_id(id)
    Libro.find(id)
  end
end
