class AddMoreFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :gender, :string
    add_column :users, :education, :text
    add_column :users, :comments, :text
    
  end
end
 