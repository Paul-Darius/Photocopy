class AddOptionsToPurchases < ActiveRecord::Migration
  def change
    add_column :purchases, :from_page, :integer
    add_column :purchases, :to_page, :integer
    remove_column :purchases, :file_url
    add_column :purchases, :number_pages_per_pages, :integer
    add_column :purchases, :bandw, :boolean
    add_column :purchases, :binding, :boolean
    add_column :purchases, :tape, :boolean

  end
end
