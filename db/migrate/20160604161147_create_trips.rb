class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :title
      t.string :date
      t.string :description
      t.string :location
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
