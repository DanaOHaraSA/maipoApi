class RemoveColumnsFromLocals < ActiveRecord::Migration[5.0]
  def change
    remove_column :locals, :foto_file_name, :string
    remove_column :locals, :foto_content_type, :string
    remove_column :locals, :foto_file_size, :integer
    remove_column :locals, :foto_updated_at, :datetime
    remove_column :locals, :foto, :text
  end
end
