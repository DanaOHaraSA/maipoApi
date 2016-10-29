class CreateSalas < ActiveRecord::Migration[5.0]
  def change
    create_table :salas do |t|
      t.references :local, foreign_key: true
      t.string :nombre
      t.text :foto
      t.integer :calor
      t.text :descripcion
      t.text :backline
      t.float :largo
      t.float :ancho

      t.timestamps
    end
  end
end
