class AddColumnYearDiaHoraToSolicituds < ActiveRecord::Migration[5.0]
  def change
    add_column :solicituds, :year, :integer
    add_column :solicituds, :hora, :integer
    add_column :solicituds, :dia, :integer
  end
end
