class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :img
      t.string :category
      t.text :description

      t.timestamps null: false
    end
  end
end
