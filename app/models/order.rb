class Order < ApplicationRecord
  has_many :services

  validates :customer_name, presence: true

  has_many :services_orders
  has_many :services, through: :services_orders
end
