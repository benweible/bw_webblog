class Part < ActiveRecord::Base

	scope :instore, lambda { where( :available => true) }
	scope :sorted, lambda { order("id ASC") }
	scope :search, lambda { |query| where (["part_name LIKE ?", "%#{query}%"])
	}

end
