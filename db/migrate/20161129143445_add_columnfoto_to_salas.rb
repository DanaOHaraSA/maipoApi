class AddColumnfotoToSalas < ActiveRecord::Migration[5.0]
  def change
    add_attachment :salas, :foto
  end
end
