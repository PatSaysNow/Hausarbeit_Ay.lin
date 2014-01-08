class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :product_id
      t.string :integer
      t.string :product_title
      t.string :integer
      t.string :productrating
      t.string :decimal;
      t.string :picture
      t.string :integer

      t.timestamps
    end
  end
end
