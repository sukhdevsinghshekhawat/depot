class SetPaymentTypeNotNull < ActiveRecord::Migration[7.1]
  def change
    change_column_null :orders, :payment_type_id, false
  end
end
