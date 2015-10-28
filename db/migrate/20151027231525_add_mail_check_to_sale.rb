class AddMailCheckToSale < ActiveRecord::Migration
  def change
    add_column :sales, :mail_check, :boolean
  end
end
