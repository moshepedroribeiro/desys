module Items
  class Service
    def self.calculate_total_price_order(order)
      total_price_items = 0
      order.items.each do |item|
        item.total_price = (item.quantity * item.unit_price)

        if item.discount.present?
          item.total_price -= item.discount
        end

        total_price_items += item.total_price
      end

      total_price_items
    end
  end
end