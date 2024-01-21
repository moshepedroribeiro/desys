class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :product_name
      t.integer :quantity
      t.decimal :unit_price, precision: 8, scale: 2
      t.decimal :discount, precision: 8, scale: 2
      t.decimal :total_price, precision: 8, scale: 2
      t.references :order, index: true, foreign_key: true
      t.timestamps
    end
  end
end
