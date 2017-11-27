class CreateFlats < ActiveRecord::Migration[5.1]
  def change
    create_table :flats do |t|
      t.references :user, foreign_key: true
      t.string :address
      t.integer :rooms
      t.text :description
      t.integer :price
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
