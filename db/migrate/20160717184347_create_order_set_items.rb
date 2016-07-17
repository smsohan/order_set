class CreateOrderSetItems < ActiveRecord::Migration
  def change
    create_table :order_set_items do |t|
      t.integer :parent_id
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
