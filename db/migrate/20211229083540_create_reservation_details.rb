class CreateReservationDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :reservation_details do |t|
      t.references :reservation, null: false
      t.references :ticket, null: false
      t.string :seat

      t.timestamps
    end
  end
end
