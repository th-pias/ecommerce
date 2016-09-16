class CreateEcommerceCarts < ActiveRecord::Migration
  def change
    create_table :ecommerce_carts do |t|

      t.timestamps null: false
    end
  end
end
