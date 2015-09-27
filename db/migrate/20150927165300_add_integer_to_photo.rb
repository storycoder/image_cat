class AddIntegerToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :genre_id, :integer
  end
end
