class AddColumnsToPictures < ActiveRecord::Migration[6.1]
  def change
    create_table :pictures do |t|
      t.references :user, null: false, foreign_key: true
    end
  end
end
