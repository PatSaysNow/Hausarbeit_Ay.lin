class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :categoriename
      t.string :integer

      t.timestamps
    end
  end
end
