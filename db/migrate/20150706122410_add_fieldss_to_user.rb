class AddFieldssToUser < ActiveRecord::Migration
  def change
    add_column :users, :deactivated_date, :date
  end
end
