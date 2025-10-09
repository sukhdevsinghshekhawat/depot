class CopyProductPriceToLineItems < ActiveRecord::Migration[7.1]
  def up
    LineItem.all.each do |item|
      item.update(price: item.product.price)
    end
  end

  def down
    LineItem.update_all(price: nil)
  end
end
