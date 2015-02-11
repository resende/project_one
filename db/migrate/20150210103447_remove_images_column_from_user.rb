class RemoveImagesColumnFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :images
  end
end
