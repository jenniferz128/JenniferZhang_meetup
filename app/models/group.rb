class Group < ActiveRecord::Base
	validates :name, presence: true
	validates_uniqueness_of :name
	has_many :roles, dependent: :delete_all
	has_many :users, through: :roles
end