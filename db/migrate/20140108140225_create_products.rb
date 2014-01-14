class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :product_id
      t.string :title
      t.float :rating
      t.timestamps
    end
  end
end
