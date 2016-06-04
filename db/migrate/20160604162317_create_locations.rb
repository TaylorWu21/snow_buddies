class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
    	t.belongs_to :trip
    	t.belongs_to :resort

      t.timestamps null: false
    end
  end
end
