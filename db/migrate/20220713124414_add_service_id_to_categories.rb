class AddServiceIdToCategories < ActiveRecord::Migration[6.1]
  def change
    add_belongs_to :services, :category
  end
end