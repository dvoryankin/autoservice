class Service < ApplicationRecord
  belongs_to :order
  belongs_to :category
  has_one :performer

  has_many :services_orders
  has_many :orders, through: :services_orders
end
