class AddDataToSolicitud < ActiveRecord::Migration[5.0]
  def change
    add_column :solicituds, :nombreSala, :string
    add_column :solicituds, :nombreLocal, :string
    add_column :solicituds, :imahenUrlMusico, :text
    add_column :solicituds, :fono, :string
    add_column :solicituds, :nombreMusico, :string
    add_column :solicituds, :calificacion, :float                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               

  end
end
