class RenameColumnImahen < ActiveRecord::Migration[5.0]
  def change
    rename_column :solicituds, :imahenUrlMusico, :imagenUrlMusico
  end
end
