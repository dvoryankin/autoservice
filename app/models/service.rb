class Service < ApplicationRecord
  belongs_to :order
  belongs_to :category
  has_one :performer
end
