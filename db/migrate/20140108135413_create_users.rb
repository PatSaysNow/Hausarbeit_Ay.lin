class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :password
      

      t.timestamps
    end
  end
end
