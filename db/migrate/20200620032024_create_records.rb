class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.integer :competition_id
      t.string :name
      #小数点を含むためfloat
      t.float :total_time

      t.timestamps
    end
  end
end
