class CreateSittings < ActiveRecord::Migration[5.0]
  def change
    create_table :sittings do |t|
      t.integer :parent_id
      t.integer :nanny_id
      t.datetime :start_time
      t.datetime :stop_time
      t.integer :duration
      t.integer :number_of_kids 
      t.integer :billed_amount

      t.timestamps
    end
  end
end
