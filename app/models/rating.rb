class Rating < ActiveRecord::Base
	belongs_to :user
	belongs_to :product

	 validates :product_id,
	 						numericality:{greater_than_or_equal_to: 0.0},
	 						presence: true
   validates :vote
      				numericality:{greater_than_or_equal_to: 0.0},
	 						presence: true
end
