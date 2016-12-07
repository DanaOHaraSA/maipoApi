class AddDefaultomusico < ActiveRecord::Migration[5.0]
  def change
    change_column :usuario_ms, :calificacion, :float, :default => 0
  end
end
