class AddColumnMesTosolicituds < ActiveRecord::Migration[5.0]
  def change
    add_column :solicituds, :mes, :integer
    add_column :solicituds, :beginhour, :integer
    add_column :solicituds, :endhour, :integer
  end
end
