class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :firstname
    	t.string :middlename
    	t.string :lastname
    	t.string :emailid
    	t.string :loginid
    	t.string :password

    	t.string :empid
    	t.date :dob
    	t.timestamps null: false
    end
  end
end
