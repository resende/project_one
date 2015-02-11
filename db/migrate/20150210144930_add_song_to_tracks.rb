class AddSongToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :song, :text
  end
end
