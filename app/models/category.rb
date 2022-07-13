class Category < ApplicationRecord
  has_many :services

  default_scope { order(created_at: :asc) }
end
