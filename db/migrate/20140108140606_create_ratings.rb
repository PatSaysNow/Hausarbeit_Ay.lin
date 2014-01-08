class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :name
      t.string :rating_id
      t.string :integer;
      t.string :ratingrating
      t.string :decimal

      t.timestamps
    end
  end
end
