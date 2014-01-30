class Product < ActiveRecord::Base
	belongs_to :user
	has_many :ratings
	belongs_to :categoriers
	rails generate migration AddImageToPaintings image:string
	mount_uploader :image, ImageUploader

validates :name,
					presence: true
validates :product_id,
					numericality:{greater_than_or_equal_to: 0.0}
validates :title,	
					presence: true
validates	:rating,
					numericality:{greater_than_or_equal_to: 0.0}					

end
