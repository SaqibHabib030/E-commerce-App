class AddTotalInOrderItems < ActiveRecord::Migration[6.1]
  def change

    add_column :order_items, :total, :integer
  end
end
