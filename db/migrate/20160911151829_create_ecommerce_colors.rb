class CreateEcommerceColors < ActiveRecord::Migration
  def change
    create_table :ecommerce_colors do |t|
      t.string :code
      t.timestamps null: false
    end
  end
end
