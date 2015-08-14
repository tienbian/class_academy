class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :avatar
      t.string :phone
      t.string :address
      t.datetime :birthday
      t.string :facebook

      t.timestamps null: false
    end
  end
end
