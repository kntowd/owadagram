class RemoveImagenameFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :image_name
  end
end
