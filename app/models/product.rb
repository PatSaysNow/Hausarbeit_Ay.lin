class Product < ActiveRecord::Base
	belongs_to :user
	has_many :ratings
	belongs_to :categoriers
end
