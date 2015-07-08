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
      t.string :gender
      t.string  :education
      t.string :comments
      t.string :locked
      t.string :reason
      t.string  :phone
      t.date :deactivated_date
      t.string :timezone
      t.string :designation
      t.date :doj
      t.timestamps null: false
    end
    
  end
end
