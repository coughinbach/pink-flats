class AddNameToFlats < ActiveRecord::Migration[5.1]
  def change
    add_column :flats, :name, :string
  end
end
