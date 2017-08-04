class Profile < ApplicationRecord
	has_one :profile, inverse_of: :user, dependent: :destroy
	has_many :ordered_item,through: :orders,source: :product
	belongs_to :user
end
