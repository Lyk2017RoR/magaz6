class Product < ApplicationRecord
	belongs_to :brand
	belongs_to :category
	#acts_as_taggable # Alias for acts_as_taggable_on :tags
  	#acts_as_taggable_on :skills, :interests
end
