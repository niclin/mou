class AddCompletedAtToMouItems < ActiveRecord::Migration
  def change
    add_column :mou_items, :completed_at, :datatime
  end
end
