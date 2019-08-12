class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :customer_name
      t.text :address
      t.string :pay_type
      t.string :email
      t.string :shipping_status

      t.timestamps
    end
  end
end
