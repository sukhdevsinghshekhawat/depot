class AddPaymentTypeToOrders < ActiveRecord::Migration[7.1]
  def change
    add_reference :orders, :payment_type, null: true, foreign_key: true
  end
end
