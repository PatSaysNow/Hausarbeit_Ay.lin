class User < ActiveRecord::Base
	# Kommentar von Roland
	has_many :products
	has_many :ratings

end
