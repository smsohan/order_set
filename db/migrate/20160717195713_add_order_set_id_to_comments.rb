class AddOrderSetIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :order_set_item_id, :integer, required: true
  end
end
