class AddColumnFotoFromLocal < ActiveRecord::Migration[5.0]
  def change
    add_attachment :locals, :foto
  end
end
