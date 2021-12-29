class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|



      t.date :screening_date, null: false
      t.time :starttime, null: false
      t.time :endtime, null: false

      t.timestamps
    end
  end
end
