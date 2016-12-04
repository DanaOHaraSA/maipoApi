class AddColumnImagenUrlToLocal < ActiveRecord::Migration[5.0]
  def change
    add_column :locals, :imagenUrl, :text 
  end
end
