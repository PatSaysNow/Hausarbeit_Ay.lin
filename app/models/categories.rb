class Categories < ActiveRecord::Base
	has_many :products


	validates :name,
						presence: true	
  validates :top_category,
  					presence: true
end
