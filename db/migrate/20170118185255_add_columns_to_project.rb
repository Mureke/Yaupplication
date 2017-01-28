class AddColumnsToProject < ActiveRecord::Migration
  def change
    add_column :projects, :filename, :string
    add_column :projects, :content_type, :string
    add_column :projects, :file_contents, :binary
  end
end
