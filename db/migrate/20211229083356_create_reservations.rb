class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.references :member
      t.references :schedule
      t.string :payment
      t.integer :chiket_sheets
      t.integer :total_sheets
      t.datetime :confirm_time
      t.integer :status

      t.timestamps
    end
  end
end
