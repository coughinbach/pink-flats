class RenameRoomsToGuests < ActiveRecord::Migration[5.1]
  def change
    rename_column :flats, :rooms, :guests
  end
end
