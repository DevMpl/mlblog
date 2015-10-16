class Mlblog::Category < ActiveRecord::Base
	
	has_many :articles
	
	acts_as_nested_set
	
	validates :name, presence: true
	validates :name, uniqueness: true
	
	validates :slug, presence: true
	validates :slug, uniqueness: true
	
	validates :status, presence: true
		
end