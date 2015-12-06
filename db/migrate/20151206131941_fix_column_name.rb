class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :purchases, :attachement, :attachment

  end
end
