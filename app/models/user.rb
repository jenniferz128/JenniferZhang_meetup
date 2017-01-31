class User < ActiveRecord::Base
	has_many :roles, :dependent => :destroy
	has_many :groups, :through => :roles

	def self.import(file) 
		User.delete_all
		Role.delete_all

	    CSV.foreach(file.path, headers: true) do |row|
	      u = User.find_or_create_by(first_name: row['First Name'], last_name: row['Last Name'])
	      g = Group.find_or_create_by(name: row['Group Name'])
	      Role.create!({
	          :group_id  	=> g.id, 
	          :user_id    => u.id, 
	          :title  	=> row['Role in Group']
	      })
	    end
	end
end
