class Photo < ActiveRecord::Base
	validates :img, presence: true
	validates :category, presence: true
	validates :description, presence: true
	validates :pic, presence: true
	belongs_to :genre

	mount_uploader :pic, PicUploader
end
