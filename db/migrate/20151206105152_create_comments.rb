class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :detail
      t.datetime :comment_date
      t.references :purchase, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
