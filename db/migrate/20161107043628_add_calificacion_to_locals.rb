class AddCalificacionToLocals < ActiveRecord::Migration[5.0]
  def change
    add_column :locals, :calificacion, :float, :default => 0
  end
end
