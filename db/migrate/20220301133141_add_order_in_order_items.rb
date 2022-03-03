class AddOrderInOrderItems < ActiveRecord::Migration[6.1]
  def change
    add_column :order_items, :order, :integer

  end
end
