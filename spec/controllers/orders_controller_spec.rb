require 'rails_helper'

RSpec.describe OrdersController, type: :controller do
  it 'create' do
    order_params = attributes_for(:order)
    post :create, params: { order: order_params }
    expect(flash[:notice]).to match(/successfully created/)
  end

  it 'update' do
    order = Order.last
    order.items.last.product_name = 'Rolo compressor'

    put :update, params: { id: order.id, order: { customer_name: 'Pedro Weizemann' } }
    expect(flash[:notice]).to match(/successfully updated/)
  end

  it 'index' do
    get :index
    expect(response.status).to be(200)
  end
end
