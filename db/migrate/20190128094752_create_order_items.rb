class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.string :item_name
      t.string :price
      t.string :quantity
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
