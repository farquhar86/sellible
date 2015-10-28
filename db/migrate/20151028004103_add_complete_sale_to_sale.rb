class AddCompleteSaleToSale < ActiveRecord::Migration
  def change
    add_column :sales, :complete_sale, :boolean
  end
end
