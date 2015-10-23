class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :make
      t.string :model
      t.string :carrier
      t.string :capacity

      t.timestamps null: false
    end
  end
end
