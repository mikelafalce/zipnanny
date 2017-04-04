class CreateSittings < ActiveRecord::Migration[5.0]
  def change
    create_table :sittings do |t|
      t.integer :parent_id
      t.integer :nanny_id
      t.time :start_time
      t.time :stop_time
      t.date :date
      t.integer :number_of_kids
      t.integer :billed_amount

      t.timestamps
    end
  end
end
