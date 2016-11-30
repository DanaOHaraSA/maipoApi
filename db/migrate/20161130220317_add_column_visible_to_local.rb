class AddColumnVisibleToLocal < ActiveRecord::Migration[5.0]
  def change
    add_column :locals, :visible, :boolean, :default => true 
  end
end
