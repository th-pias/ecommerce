class CreateEcommerceImages < ActiveRecord::Migration
  def change
    create_table :ecommerce_images do |t|
      t.string :picture
      t.timestamps null: false
    end
  end
end
