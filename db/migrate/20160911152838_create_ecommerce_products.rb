class CreateEcommerceProducts < ActiveRecord::Migration
  def change
    create_table :ecommerce_products do |t|
      t.string :name
      t.string :description
      t.float :price
      t.integer :discount
      t.integer :quantity
      t.timestamps null: false
    end
  end
end
