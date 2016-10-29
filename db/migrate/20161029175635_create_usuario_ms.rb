class CreateUsuarioMs < ActiveRecord::Migration[5.0]
  def change
    create_table :usuario_ms do |t|
      t.string :nombre
      t.string :email
      t.string :telefono
      t.string :clave
      t.float :calificacion
      t.float :rango

      t.timestamps
    end
  end
end
