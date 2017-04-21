class AddIndex < ActiveRecord::Migration[5.0]
  def change
  end

  add_index :albums, :band_id, unique: true
end
