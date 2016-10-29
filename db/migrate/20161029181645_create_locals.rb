class CreateLocals < ActiveRecord::Migration[5.0]
  def change
    create_table :locals do |t|
      t.references :usuario_a, foreign_key: true
      t.string :nombre
      t.string :foto
      t.float :calificacion
      t.text :descripcion
      t.text :horario
      t.text :direccion
      t.float :latitud
      t.float :longitud

      t.timestamps
    end
  end
end
