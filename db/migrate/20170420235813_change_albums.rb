class ChangeAlbums < ActiveRecord::Migration[5.0]
  def change
    add_column :albums, :band_id, :integer, null: false
    add_column :albums, :yr, :integer, null: false
    add_column :albums, :live, :boolean, default: false, null: false

    remove_column :tracks, :band_id
  end
end
