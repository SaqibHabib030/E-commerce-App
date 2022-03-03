class AddColumnToOrderItem < ActiveRecord::Migration[6.1]
  def change
    add_column :order_items, :quantity, :integer
    add_column :order_items, :product_id, :integer
    add_column :order_items, :order_id, :integer
    add_column :order_items, :total, :decimal
    add_column :order_items, :unit_price, :decimal
  end
end
