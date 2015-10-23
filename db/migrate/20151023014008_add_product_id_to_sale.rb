class AddProductIdToSale < ActiveRecord::Migration
  def change
    add_column :sales, :product_id, :integer
  end
end
