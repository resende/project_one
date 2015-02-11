class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.text :title
      t.integer :length
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
