class CreateGyms < ActiveRecord::Migration
  def change
    create_table :gyms do |t|
      t.string :location
      t.string :name
      t.string :address
      t.string :phone
      t.string :link
      t.boolean :favorite
      t.boolean :check_box
      t.timestamps
    end
  end
end
