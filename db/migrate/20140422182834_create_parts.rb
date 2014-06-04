class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|

      t.text "part_name"
      t.integer "price"
      t.boolean "available", :default => true

      t.timestamps

  end

  def down
    drop_table :parts
  end

  end
end

