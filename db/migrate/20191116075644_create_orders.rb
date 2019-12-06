class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.decimal :subtotal, precision: 12, scale: 3
      t.decimal :total, precision: 12, scale: 3
      t.integer :order_status
      t.string :customer_name
      t.string :customer_phone
      t.string :customer_adress
      t.integer :user_id

      t.timestamps
    end
  end
end
