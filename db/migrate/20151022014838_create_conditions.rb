class CreateConditions < ActiveRecord::Migration
  def change
    create_table :conditions do |t|
      t.string :bad
      t.string :good
      t.string :great

      t.timestamps null: false
    end
  end
end
