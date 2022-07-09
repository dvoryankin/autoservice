class AddPerformersIdToServices < ActiveRecord::Migration[6.1]
  def change
    add_belongs_to :performers, :service
  end
end
