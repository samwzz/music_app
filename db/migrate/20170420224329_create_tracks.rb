class CreateTracks < ActiveRecord::Migration[5.0]
  def change
    create_table :tracks do |t|
      t.string :name, null: false
      t.integer :band_id, null: false
      t.integer :album_id, null: false
      t.timestamps
    end

    add_index :tracks, :band_id
    add_index :tracks, :album_id
  end
end
