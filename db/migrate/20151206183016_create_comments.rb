class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :text
      t.references :purchase_id
      t.references :user_id

      t.timestamps null: false
    end
  end
end
