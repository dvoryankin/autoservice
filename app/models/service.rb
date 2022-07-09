class Service < ApplicationRecord
  belongs_to :order
  has_many :performers
end
