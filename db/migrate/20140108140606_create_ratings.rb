class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :product_id
      t.float :vote
      t.timestamps
    end
  end
end
