class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.string :work,         null: false
      t.datetime :start_time, null: false
      t.string :item
      t.string :place
      t.text :memo


      t.timestamps
    end
  end
end
