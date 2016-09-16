class CreateEcommerceOrderItems < ActiveRecord::Migration
  def change
    create_table :ecommerce_order_items do |t|
      t.integer :quantity
      t.string :color
      t.timestamps null: false
    end
  end
end
