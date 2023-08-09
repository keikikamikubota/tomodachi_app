class AddColumImageToPicture < ActiveRecord::Migration[6.1]
  def up
    add_column :pictures, :image, :text
  end
end
