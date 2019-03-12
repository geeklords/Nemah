class AddPostToReservations < ActiveRecord::Migration[5.2]
  def change
    add_reference :reservations, :post, foreign_key: true
  end
end
