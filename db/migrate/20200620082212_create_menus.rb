class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.string :name
      t.text :introduction
      t.integer :total_distance

      t.timestamps
    end
  end
end
