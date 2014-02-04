class Categories < ActiveRecord::Base
	has_many :produktes


	validates :name,
						presence: true	
  validates :top_category,
  					presence: true
end
