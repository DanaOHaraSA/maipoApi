class AddColumnVisibleToSala < ActiveRecord::Migration[5.0]
  def change
    add_column :salas, :visible, :boolean, :default => true 
  end
end
