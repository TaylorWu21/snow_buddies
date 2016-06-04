class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :age
      t.string :decription
      t.string :phone_number
      t.string :skill_level
      t.string :ski_or_board

      t.timestamps null: false
    end
  end
end
