class ChangeFotoToLocals < ActiveRecord::Migration[5.0]
  def self.up
    change_table :locals do |t|
      t.attachment :foto
  end
end

def self.down
   drop_attached_file :locals, :foto
 end
end
