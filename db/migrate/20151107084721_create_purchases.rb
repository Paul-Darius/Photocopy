class CreatePurchases < ActiveRecord::Migration
  def change
    drop_table :purchases
    create_table :purchases do |t|
      t.string :file_url
      t.string :comments

      t.timestamps null: false
    end
  end
end
