class Photo < ActiveRecord::Base
	validates :img, presence: true
	validates :category, presence: true
	validates :description, presence: true
end
