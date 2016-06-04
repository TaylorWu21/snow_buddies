class CreateResorts < ActiveRecord::Migration
  def change
    create_table :resorts do |t|
      t.string :name
      t.string :zip_code

      t.timestamps null: false
    end
  end
end
