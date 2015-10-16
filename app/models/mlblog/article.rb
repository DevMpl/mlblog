class Mlblog::Article < ActiveRecord::Base
	
	# attr_accessor :author_name
	# belongs_to :user, class_name: "User"
	
	belongs_to :category
	
	validates :title, presence: true
	validates :category_id, presence: true
	
	validates :status, presence: true
	
end