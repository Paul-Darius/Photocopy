class AddStuffToPurchase < ActiveRecord::Migration
  def change
    add_column :purchases, :user_id, :integer
    add_column :purchases, :status, :integer
  end
end
