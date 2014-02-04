class AddImageToProduktes < ActiveRecord::Migration
  def change
    add_column :produktes, :image, :string
  end
end
