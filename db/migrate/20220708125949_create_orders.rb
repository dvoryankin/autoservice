class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :performer_name
      t.datetime :created_time

      t.timestamps
    end
  end
end
