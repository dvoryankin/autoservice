class CreateServicePerformers < ActiveRecord::Migration[6.1]
  def change
    create_table :service_performers do |t|
      t.string :name

      t.timestamps
    end
  end
end
