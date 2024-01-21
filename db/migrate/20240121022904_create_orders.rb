class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :customer_name
      t.time :time_placed
      t.decimal :total_price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
