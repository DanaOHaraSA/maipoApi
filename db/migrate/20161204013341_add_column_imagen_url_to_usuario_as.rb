class AddColumnImagenUrlToUsuarioAs < ActiveRecord::Migration[5.0]
  def change
    add_column :usuario_ms, :imagenUrl, :text 
  end
end
