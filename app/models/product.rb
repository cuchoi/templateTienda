class Product < ActiveRecord::Base
	has_many :cart_items
	belongs_to :user
	belongs_to :category

	before_destroy :ensure_not_referenced_by_any_line_item

	def ensure_not_referenced_by_any_line_item
		if line_items.count.zero?
			return true
		else
			errors[:base] << "Lines Items present"
			return false
		end
	end			
end
