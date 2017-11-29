class RenameLatLngInFlats < ActiveRecord::Migration[5.1]
  def change
    rename_column :flats, :lat, :latitude
    rename_column :flats, :lng, :longitude
  end
end
