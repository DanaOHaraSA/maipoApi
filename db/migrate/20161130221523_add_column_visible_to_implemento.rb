class AddColumnVisibleToImplemento < ActiveRecord::Migration[5.0]
  def change
    add_column :implementos, :visible, :boolean, :default => true 
  end
end
