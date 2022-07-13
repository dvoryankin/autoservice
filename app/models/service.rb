class Service < ApplicationRecord
  belongs_to :order
  has_one :category
  has_one :performer
end
