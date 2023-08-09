class AddColumnTextToPicture < ActiveRecord::Migration[6.1]
  def up
    add_column :pictures, :text, :text
  end
end
