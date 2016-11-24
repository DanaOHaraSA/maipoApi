class RemoveImagenFromSolicituds < ActiveRecord::Migration[5.0]
  def change
    remove_column :solicituds, :imagen, :text
  end
end
