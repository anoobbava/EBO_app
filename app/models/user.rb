class User < ActiveRecord::Base
	validates :firstname, presence: true , format:{ with: /\A[a-zA-Z]+\z/,
									message: "only allow letters" }
	validates :lastname, presence: true ,format:{ with: /\A[a-zA-Z]+\z/,
									message: "only allow letters" }

	validates :emailid,presence: true,
			   		    uniqueness: true
	validates :password, confirmation: true
	validates :password_confirmation, presence: true			
											
	validates :loginid, presence: true ,uniqueness: true ,format:{ with: /\A[a-z0-9\-_]+\z/,
							message: "only allow letters,numbers,underscore and hyphen" }
	validates :empid, presence: true
	validates :phone, format:{ with: /\d{3}\-?\d{3}\-?\d{4}/,
									message: "only allow numbers" }
									


end


