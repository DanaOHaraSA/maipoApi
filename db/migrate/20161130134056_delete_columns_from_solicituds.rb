class DeleteColumnsFromSolicituds < ActiveRecord::Migration[5.0]
  def change
    remove_column :solicituds, :hora, :integer
  end
end
