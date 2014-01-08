class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :usaername
      t.string :integer;
      t.string :first
      t.string :name
      t.string :integer;
      t.string :last
      t.string :name
      t.string :integer;
      t.string :password
      t.string :integer;
      t.string :e
      t.string :mail
      t.string :integer;
      t.string :adress
      t.string :integer

      t.timestamps
    end
  end
end
