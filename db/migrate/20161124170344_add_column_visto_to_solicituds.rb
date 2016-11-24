class AddColumnVistoToSolicituds < ActiveRecord::Migration[5.0]
  def change
  add_column :solicituds, :visto, :string
  end
end
