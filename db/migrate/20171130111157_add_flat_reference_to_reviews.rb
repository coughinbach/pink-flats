class AddFlatReferenceToReviews < ActiveRecord::Migration[5.1]
  def change
    add_reference :reviews, :flat, foreign_key: true
  end
end
