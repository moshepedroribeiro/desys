FactoryBot.define do
  factory :order do
    customer_name { 'Moisés Ribeiro' }
    time_placed { DateTime.current }
    items_attributes { [{ product_name: 'Tinta', quantity: 2, unit_price: 30, discount: 10}, { product_name: 'Massa corrida', quantity: 3, unit_price: 100}] }
  end
end