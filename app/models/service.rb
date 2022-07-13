class Service < ApplicationRecord
  belongs_to :order
  belongs_to :category
  has_one :performer

  default_scope { order(created_at: :asc) }
end
