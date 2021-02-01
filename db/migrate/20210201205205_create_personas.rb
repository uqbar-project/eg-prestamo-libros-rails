class CreatePersonas < ActiveRecord::Migration[6.0]
  def change
    create_table :personas do |t|
      t.string :nombre
      t.boolean :activo, :default => true

      t.timestamps
    end
  end
end
