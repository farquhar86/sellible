class AddConditionToProduct < ActiveRecord::Migration
  def change
    add_column :products, :condition, :string
  end
end
