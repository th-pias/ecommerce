class AddRefarencesToMigration < ActiveRecord::Migration
  def change
    add_reference :ecommerce_colors, :product, index: true
    add_reference :ecommerce_images, :product, index: true
    add_reference :ecommerce_orders, :cart, index: true
    add_reference :ecommerce_products, :category, index: true
    add_reference :ecommerce_products, :brand, index: true
    add_reference :ecommerce_order_items, :cart, index: true
    add_reference :ecommerce_order_items, :product, index: true
    add_reference :ecommerce_order_items, :order, index: true
    add_column :ecommerce_order_items, :item_price, :float
    add_column :ecommerce_order_items, :total_price, :float
    add_column :ecommerce_orders, :total_price, :float
  end
end
