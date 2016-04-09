class CreateMouItems < ActiveRecord::Migration
  def change
    create_table :mou_items do |t|
      t.string :content
      t.references :mou_list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
