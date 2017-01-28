class RemoveColumnsFromProject < ActiveRecord::Migration
  def change
    remove_column :projects, :image_file_size, :integer
    remove_column :projects, :image_updated_at, :datetime
    remove_column :projects, :image_file_name, :string
    remove_column :projects, :image_content_type, :string
    remove_column :projects, :path, :string
    remove_column :projects, :image, :string
  end
end
