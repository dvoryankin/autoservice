class Service < ApplicationRecord
  belongs_to :order
  has_one :performer
end
