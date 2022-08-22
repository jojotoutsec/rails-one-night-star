class AddReferencesToBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :service_id
    remove_column :bookings, :user_id
    add_reference :bookings, :user, foreign_key: true
    add_reference :bookings, :service, foreign_key: true
  end
end
