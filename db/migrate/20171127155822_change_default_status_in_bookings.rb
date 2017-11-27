class ChangeDefaultStatusInBookings < ActiveRecord::Migration[5.1]
  def change
    change_column_default :bookings, :status, from: nil, to: "Pending"
  end
end
