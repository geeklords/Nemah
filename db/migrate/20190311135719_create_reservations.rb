class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      
      t.integer :amount, :default => 0

      t.timestamps
    end
  end
end
