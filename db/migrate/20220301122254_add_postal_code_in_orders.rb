class AddPostalCodeInOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :postal_code, :integer

  end
end
