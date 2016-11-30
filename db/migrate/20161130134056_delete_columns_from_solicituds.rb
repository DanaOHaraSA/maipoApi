class DeleteColumnsFromSolicituds < ActiveRecord::Migration[5.0]
  def change
    remove_column :solicituds, :hora, :integer
    remove_column :solicituds, :imagen_file_name, :string
    remove_column :solicituds, :imagen_content_type, :string
    remove_column :solicituds, :imagen_file_size, :integer
    remove_column :solicituds, :imagen_updated_at, :datetime
  end
end


"imagen_file_name": null,
  "imagen_content_type": null,
  "imagen_file_size": null,
  "imagen_updated_at": nul
