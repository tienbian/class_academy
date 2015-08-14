class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.string :name
      t.string :body

      t.timestamps null: false
    end
  end
end
