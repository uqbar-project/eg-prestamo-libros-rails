# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
libros = Libro.create([
                        { titulo: 'El Aleph', autor: 'Jorge Luis Borges'},
                        { titulo: 'No habrá más penas ni olvido', autor: 'Osvaldo Soriano'},
                        { titulo: 'La guerra y la paz', autor: 'León Tolstoi'},
                        { titulo: 'Un día en la vida de Ivan Denisovich', autor: 'Alexander Solyenitsin'},
                        { titulo: 'Rayuela', autor: 'Julio Cortázar'}
                      ])

personas = Persona.create([{ nombre: 'Medina'}, { nombre: 'Ravenna'}, { nombre: 'Santos'}, {nombre: 'Milazzo'}, {nombre: 'Lampone'}])

prestamo_service = PrestamosService.new
prestamo_service.prestar(Prestamo.new({ libro: libros.first, persona: personas.first}))
prestamo_service.prestar(Prestamo.new({ libro: libros.at(1), persona: personas.at(1)}))