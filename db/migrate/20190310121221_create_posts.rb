class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :type_of_food
      t.integer :amount, :default => 0

      t.timestamps
    end
  end
end
