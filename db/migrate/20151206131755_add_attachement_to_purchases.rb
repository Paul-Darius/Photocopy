class AddAttachementToPurchases < ActiveRecord::Migration
  def change
    add_column :purchases, :attachement, :string
  end
end
