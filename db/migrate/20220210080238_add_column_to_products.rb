class AddColumnToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :title, :string
    add_column :products, :price, :decimal
    add_column :products, :description, :string
    add_column :products, :image, :string
  end
end
