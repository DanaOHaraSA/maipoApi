class ChangeValorFromSalas < ActiveRecord::Migration[5.0]
  def change
   change_column :salas, :valor, :float
  end
end
