class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :flat, foreign_key: true
      t.integer :nights
      t.date :start_date
      t.date :end_date
      t.integer :guests
      t.string :status

      t.timestamps
    end
  end
end
