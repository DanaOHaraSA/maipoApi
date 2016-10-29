class ChangeCalorFromSalas < ActiveRecord::Migration[5.0]
  def change
    rename_column :salas, :calor, :valor
  end
end
