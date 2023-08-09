class DeleteRecords < ActiveRecord::Migration[6.1]
  def change
    drop_table :feeds
    drop_table :blogs
  end
end
