class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.text :image
      t.text :about
      t.text :contact
      t.text :genre
  

      t.timestamps null: false
    end
  end
end
