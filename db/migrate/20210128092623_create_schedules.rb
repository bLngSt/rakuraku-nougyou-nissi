class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.string :work
      t.string :item
      t.string :place
      t.text :memo
      t.datetime :start_time


      t.timestamps
    end
  end
end
