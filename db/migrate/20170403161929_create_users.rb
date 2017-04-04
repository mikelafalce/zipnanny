class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :last_name
      t.string :first_name
      t.integer :rating
      t.integer :age
      t.string :gender
      t.integer :hourly_rate
      t.integer :add_child_rate

      t.timestamps
    end
  end
end
