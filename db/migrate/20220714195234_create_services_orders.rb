class CreateServicesOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :services_orders do |t|
      t.integer :service_id
      t.integer :order_id

      t.timestamps
    end
  end
end
