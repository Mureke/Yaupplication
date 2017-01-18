class AddDefaultToIntrotext < ActiveRecord::Migration
  def change
    add_column :introtexts, :default, :boolean
  end
end
