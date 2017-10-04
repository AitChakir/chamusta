class Article < ApplicationRecord
	extend FriendlyId
	belongs_to :user
	has_many :sales
	friendly_id :title, use: :slugged
	
	

	has_attached_file :cover
  	validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/
  	
end
