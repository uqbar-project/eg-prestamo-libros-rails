class CreatePrestamos < ActiveRecord::Migration[6.0]
  def change
    create_table :prestamos do |t|
      t.belongs_to :libro
      t.belongs_to :persona
      t.datetime :fecha_devolucion
      t.datetime :fecha_prestamo
      t.timestamps
    end
  end
end
