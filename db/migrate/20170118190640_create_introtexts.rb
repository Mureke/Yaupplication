class CreateIntrotexts < ActiveRecord::Migration
  def change
    create_table :introtexts do |t|
      t.string :text
      t.date :startdate
      t.date :enddate

      t.timestamps null: false
    end
  end
end
