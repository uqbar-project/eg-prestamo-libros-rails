class PersonasService
  def todas_las_personas
    Persona.all
  end

  def buscar_por_id(id)
    Persona.find(id)
  end
end