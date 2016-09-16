class CreateEcommerceOrders < ActiveRecord::Migration
  def change
    create_table :ecommerce_orders do |t|
      t.string :name
      t.string :mobile
      t.string :address
      t.timestamps null: false
    end
  end
end
