class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :name
      t.references :album, index: true

      t.timestamps null: false
    end
    add_foreign_key :tracks, :albums
  end
end
