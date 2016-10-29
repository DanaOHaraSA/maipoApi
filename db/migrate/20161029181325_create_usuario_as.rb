class CreateUsuarioAs < ActiveRecord::Migration[5.0]
  def change
    create_table :usuario_as do |t|
      t.string :nombre
      t.string :email
      t.string :telefono
      t.string :clave

      t.timestamps
    end
  end
end
