class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :name
      t.string :category
      t.integer :price
      t.integer :user_id

      t.timestamps
    end
  end
end
