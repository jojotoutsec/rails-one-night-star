class AddReferencestoServices < ActiveRecord::Migration[7.0]
  def change
    remove_column :services, :user_id
    add_reference :services, :user, foreign_key: true
  end
end
