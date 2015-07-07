class AddMoressFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :reason, :string
    add_column :users, :phone, :string
  end
end
