class Order < ApplicationRecord
	belongs_to :user
	belongs_to :product
	has_many :ordered_items
end
