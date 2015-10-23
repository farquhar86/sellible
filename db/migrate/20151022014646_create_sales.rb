class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :country
      t.string :phone
      t.string :paypal_email
      t.timestamp :phone_shipped
      t.timestamp :phone_arrived
      t.timestamp :sale_paid

      t.timestamps null: false
    end
  end
end
