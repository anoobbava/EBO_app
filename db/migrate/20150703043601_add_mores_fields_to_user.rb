class AddMoresFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :locked, :string
    add_column :users, :deactivated, :string
  end
end
