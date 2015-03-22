class CreateTracksegments < ActiveRecord::Migration
  def change
    create_table :tracksegments do |t|
      t.references :track, index: true

      t.timestamps null: false
    end
    add_foreign_key :tracksegments, :tracks
  end
end
