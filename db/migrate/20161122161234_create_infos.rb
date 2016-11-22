class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.text :text
      t.string :email

      t.timestamps null: false
    end
  end
end
