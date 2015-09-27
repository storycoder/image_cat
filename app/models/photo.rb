class Photo < ActiveRecord::Base
	validates :img, presence: true
	validates :category, presence: true
	validates :description, presence: true

	belongs_to :category

end
