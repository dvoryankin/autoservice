class Order < ApplicationRecord
  has_many :services

  validates :customer_name, presence: true
end
