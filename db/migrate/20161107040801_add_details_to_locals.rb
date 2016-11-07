class AddDetailsToLocals < ActiveRecord::Migration[5.0]
  def change
    remove_column :locals, :calificacion, :float
  end
end
