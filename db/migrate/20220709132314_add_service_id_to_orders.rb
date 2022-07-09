class AddServiceIdToOrders < ActiveRecord::Migration[6.1]
  def change
    add_belongs_to :services, :order
  end
end
