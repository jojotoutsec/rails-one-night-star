class AddBookingToReviews < ActiveRecord::Migration[7.0]
  def change
    remove_column :reviews, :booking_id
    add_reference :reviews, :booking, foreign_key: true
  end
end
