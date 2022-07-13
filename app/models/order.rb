class Order < ApplicationRecord
  has_many :services

  validates :customer_name, presence: true

  default_scope { order(created_at: :asc) }
end
