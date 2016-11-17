class AddColumRoomCalendarUrlToSalas < ActiveRecord::Migration[5.0]
  def change
    add_column :salas, :roomCalendarUrl, :text 
  end
end
