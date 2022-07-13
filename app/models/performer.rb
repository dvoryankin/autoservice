class Performer < ApplicationRecord
  belongs_to :service

  default_scope { order(created_at: :asc) }
end
